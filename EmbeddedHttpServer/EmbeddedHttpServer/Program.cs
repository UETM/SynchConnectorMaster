using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Sockets;
using System.Net;

namespace EmbeddedHttpServer
{
    public class MyHTTPResponse
    {
        public string status;
        public string version;
        public List<string> headers;
        public byte[] bodyData;
    }

    class HttpServer
    {
        TcpListener listener;

        public void listen() {
            listener = new TcpListener(IPAddress.Any, 7788);
            listener.Start();

            accept();
        }

        public void accept()
        {
            Socket socket = listener.AcceptSocket();

            byte[] buffer = new byte[1024];
            byte[] buffer2 = new byte[1024];

            socket.Receive(buffer);

            Console.Write(System.Text.Encoding.UTF8.GetString(buffer));

            MyHTTPResponse response = new MyHTTPResponse();
            response.status = "200 Ok"; // OK
            response.version = "HTTP/1.1";

            response.headers = new List<string>();
            response.headers.Add("Server: " + "MyHTTPServer/1.0.*" + "\n");
            response.headers.Add("Date: " + DateTime.Now.ToString("r") + "\n");
            response.headers.Add("Connection: " + "Connection: keep-alive" + "\n");

            string bodyStr = 
                "<!DOCTYPE html>" +
                "<html>" +
                "<head>" +
                "<script>" +
                "function ajax() {" +
                "var xmlhttp = new XMLHttpRequest();" +
                "xmlhttp.onreadystatechange = function() {" +
                "if (this.readyState == 4 && this.status == 200) {" +
                "alert(this.responseText);" +
                "}" +
                "};" +
                "xmlhttp.open(\"GET\", \"xmlhttp_info.txt\", true);" +
                "xmlhttp.send();" +
                "}" +
                "</script>" +
                "</head>" +
                "<body onload =\"ajax()\"></body>" +
                "</html>";

            response.bodyData = ASCIIEncoding.ASCII.GetBytes(bodyStr);
            response.headers.Add("Content-Length: " + response.bodyData.Length.ToString() + "\n");

            string headerStr = response.version + " " + response.status + "\n" + response.headers[0] + response.headers[1] + response.headers[2] + response.headers[3] + "\n";
            socket.Send(ASCIIEncoding.ASCII.GetBytes(headerStr));
            socket.Send(response.bodyData);

            //socket.Close();
            //Socket socket2 = listener.AcceptSocket();
            //socket2.Receive(buffer2);
            socket.Receive(buffer2);

            Console.Write("\n");
            Console.Write(System.Text.Encoding.UTF8.GetString(buffer2));
            //socket2.Close();
            socket.Close();

            while (true) ;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            HttpServer server = new HttpServer();
            server.listen();
        }
    }
}
