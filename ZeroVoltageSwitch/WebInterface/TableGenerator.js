var Parameter = (function () {
    function Parameter(id, description, sign, min, max, step, unit) {
        this.id = id;
        this.description = description;
        this.sign = sign;
        this.min = min;
        this.max = max;
        this.step = step;
        this.unit = unit;
    }
    return Parameter;
}());
var TableGenerator = (function () {
    function TableGenerator() {
        this.parameters =
            [
                // Параметры обработки входных сигналов.
                new Parameter("PinIF1", "Фильтрация, ток полюса 1", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinIF2", "Фильтрация, ток полюса 2", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinIF3", "Фильтрация, ток полюса 3", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinIS1", "Смещение, ток полюса 1", false, 0, 100, 1, "%"),
                new Parameter("PinIS2", "Смещение, ток полюса 2", false, 0, 100, 1, "%"),
                new Parameter("PinIS3", "Смещение, ток полюса 3", false, 0, 100, 1, "%"),
                new Parameter("PinID1", "Зона нечувствтительности, ток полюса 1", false, 0, 100, 1, "%"),
                new Parameter("PinID2", "Зона нечувствтительности, ток полюса 2", false, 0, 100, 1, "%"),
                new Parameter("PinID3", "Зона нечувствтительности, ток полюса 3", false, 0, 100, 1, "%"),
                new Parameter("PinIM1", "Масштабный коэффициент, ток полюса 1", false, 0, 2000, 1, "%"),
                new Parameter("PinIM2", "Масштабный коэффициент, ток полюса 2", false, 0, 2000, 1, "%"),
                new Parameter("PinIM3", "Масштабный коэффициент, ток полюса 3", false, 0, 2000, 1, "%"),
                new Parameter("PinIR1", "Инверсия, ток полюса 1", false, 0, 1, 1, "-"),
                new Parameter("PinIR2", "Инверсия, ток полюса 2", false, 0, 1, 1, "-"),
                new Parameter("PinIR3", "Инверсия, ток полюса 3", false, 0, 1, 1, "-"),
                new Parameter("PinUsF1", "Фильтрация, фазное напряжение на подводящей линии полюса 1", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinUsF2", "Фильтрация, фазное напряжение на подводящей линии полюса 2", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinUsF3", "Фильтрация, фазное напряжение на подводящей линии полюса 3", false, 0.0, 20.0, 0.01, "мс"),
                new Parameter("PinUsS1", "Смещение, фазное напряжение на подводящей линии полюса 1", false, 0, 100, 1, "%"),
                new Parameter("PinUsS2", "Смещение, фазное напряжение на подводящей линии полюса 2", false, 0, 100, 1, "%"),
                new Parameter("PinUsS3", "Смещение, фазное напряжение на подводящей линии полюса 3", false, 0, 100, 1, "%"),
                new Parameter("PinUsD1", "Зона нечувствительности, синхронизирующее фазное напряжение на подводящей линии полюса 1", false, 0, 100, 1, "%"),
                new Parameter("PinUsD2", "Зона нечувствительности, синхронизирующее фазное напряжение на подводящей линии полюса 2", false, 0, 100, 1, "%"),
                new Parameter("PinUsD3", "Зона нечувствительности, синхронизирующее фазное напряжение на подводящей линии полюса 3", false, 0, 100, 1, "%"),
                new Parameter("PinUsM1", "Масштабный коэффициент, синхронизирующее фазное напряжение на подводящей линии полюса 1", true, 0, 2000, 1, "%"),
                new Parameter("PinUsM2", "Масштабный коэффициент, синхронизирующее фазное напряжение на подводящей линии полюса 2", true, 0, 2000, 1, "%"),
                new Parameter("PinUsM3", "Масштабный коэффициент, синхронизирующее фазное напряжение на подводящей линии полюса 3", true, 0, 2000, 1, "%"),
                new Parameter("PinUsR1", "Инверсия, синхронизирующее фазное напряжение на подводящей линии полюса 1", true, 0, 1, 1, "-"),
                new Parameter("PinUsR2", "Инверсия, синхронизирующее фазное напряжение на подводящей линии полюса 2", true, 0, 1, 1, "-"),
                new Parameter("PinUsR3", "Инверсия, синхронизирующее фазное напряжение на подводящей линии полюса 3", true, 0, 1, 1, "-"),
                new Parameter("PinUoF1", "Фильтрация, фазное напряжение на отходящей линии полюса 1", true, 0.0, 20.0, 0.01, "unit"),
                new Parameter("PinUoF2", "Фильтрация, фазное напряжение на отходящей линии полюса 2", true, 0.0, 20.0, 0.01, "unit"),
                new Parameter("PinUoF3", "Фильтрация, фазное напряжение на отходящей линии полюса 3", true, 0.0, 20.0, 0.01, "unit"),
                new Parameter("PinUoS1", "Смещение, фазное напряжение на отходящей линии полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinUoS2", "Смещение, фазное напряжение на отходящей линии полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinUoS3", "Смещение, фазное напряжение на отходящей линии полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinUoD1", "Зона нечувствительности, фазное напряжение на отходящей линии полюса 1", true, 0, 100, 1, "%"),
                new Parameter("PinUoD2", "Зона нечувствительности, фазное напряжение на отходящей линии полюса 2", true, 0, 100, 1, "%"),
                new Parameter("PinUoD3", "Зона нечувствительности, фазное напряжение на отходящей линии полюса 3", true, 0, 100, 1, "%"),
                new Parameter("PinUoM1", "Масштабный коэффициент, фазное напряжение на отходящей линии полюса 1", false, 0, 2000, 1, "unit"),
                new Parameter("PinUoM2", "Масштабный коэффициент, фазное напряжение на отходящей линии полюса 2", false, 0, 2000, 1, "unit"),
                new Parameter("PinUoM3", "Масштабный коэффициент, фазное напряжение на отходящей линии полюса 3", false, 0, 2000, 1, "unit"),
                new Parameter("PinUoR1", "Инверсия, фазное напряжение на отходящей линии полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinUoR2", "Инверсия, фазное напряжение на отходящей линии полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinUoR3", "Инверсия, фазное напряжение на отходящей линии полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinUeF", "Фильтрация, напряжение питания электромагнитов", true, 0, 0, 0, "unit"),
                new Parameter("PinUeS", "Смещение, напряжение питания электромагнитов", true, 0, 0, 0, "unit"),
                new Parameter("PinUeD", "Зона нечувствительности, напряжение питания электромагнитов", true, 0, 0, 0, "unit"),
                new Parameter("PinUeM", "Масштабный коэффициент, напряжение питания электромагнитов", true, 0, 0, 0, "unit"),
                new Parameter("PinUeR", "Инверсия, напряжение питания электромагнитов", true, 0, 0, 0, "unit"),
                new Parameter("PinPF1", "Фильтрация, давление в гидроприводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinPF2", "Фильтрация, давление в гидроприводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinPF3", "Фильтрация, давление в гидроприводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinPS1", "Смещение, давление в гидроприводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinPS2", "Смещение, давление в гидроприводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinPS3", "Смещение, давление в гидроприводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinPD1", "Зона нечувствительности, давление в гидроприводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinPD2", "Зона нечувствительности, давление в гидроприводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinPD3", "Зона нечувствительности, давление в гидроприводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinPM1", "Масштабный коэффициент, давление в гидроприводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinPM2", "Масштабный коэффициент, давление в гидроприводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinPM3", "Масштабный коэффициент, давление в гидроприводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinPR1", "Инверсия, давление в гидроприводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinPR2", "Инверсия, давление в гидроприводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinPR3", "Инверсия, давление в гидроприводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinToF", "Фильтрация, температура окружающей среды", true, 0, 0, 0, "unit"),
                new Parameter("PinToS", "Смещение, температура окружающей среды", true, 0, 0, 0, "unit"),
                new Parameter("PinToD", "Зона нечувствительности, температура окружающей среды", true, 0, 0, 0, "unit"),
                new Parameter("PinToM", "Масштабный коэффициент, температура окружающей среды", true, 0, 0, 0, "unit"),
                new Parameter("PinTpF1", "Фильтрация, температура в приводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinTpF2", "Фильтрация, температура в приводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinTpF3", "Фильтрация, температура в приводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinTpS1", "Смещение, температура в приводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinTpS2", "Смещение, температура в приводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinTpS3", "Смещение, температура в приводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinTpD1", "Зона нечувствительности, температура в приводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinTpD2", "Зона нечувствительности, температура в приводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinTpD3", "Зона нечувствительности, температура в приводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinTpM1", "Масштабный коэффициент, температура в приводе полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinTpM2", "Масштабный коэффициент, температура в приводе полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinTpM3", "Масштабный коэффициент, температура в приводе полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinSF1", "Фильтрация, положение полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinSF2", "Фильтрация, положение полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinSF3", "Фильтрация, положение полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinSR1", "Инверсия, положение полюса 1", true, 0, 0, 0, "unit"),
                new Parameter("PinSR2", "Инверсия, положение полюса 2", true, 0, 0, 0, "unit"),
                new Parameter("PinSR3", "Инверсия, положение полюса 3", true, 0, 0, 0, "unit"),
                new Parameter("PinOnF", "Фильтрация, внешняя команда на синхронное включение выключателя", true, 0, 0, 0, "unit"),
                new Parameter("PinOffR", "Инверсия, внешняя команда на синхронное отключение выключателя", true, 0, 0, 0, "unit"),
                // Параметры выключателя
                new Parameter("PUen", "Номинальное напряжение питания электромагнитов", false, 0, 220, 1, "В"),
                new Parameter("PIct", "Номинальный первичный ток трансформаторов тока выключателя", false, 0, 2500, 1, "А"),
                new Parameter("PDtOn1", "Время от момента замыкания вспомогательного контакта положения полюса 1 (сигнал «inS1») до момента замыкания главного контакта полюса 1", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PDtOn2", "Время от момента замыкания вспомогательного контакта положения полюса 2 (сигнал «inS2») до момента замыкания главного контакта полюса 2", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PDtOn3", "Время от момента замыкания вспомогательного контакта положения полюса 3 (сигнал «inS3») до момента замыкания главного контакта полюса 3", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PDtOff1", "Время от момента размыкания вспомогательного контакта положения полюса 1 (сигнал «inS1») до момента размыкания главного контакта полюса 1", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PDtOff2", "Время от момента размыкания вспомогательного контакта положения полюса 2 (сигнал «inS2») до момента размыкания главного контакта полюса 2", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PDtOff3", "Время от момента размыкания вспомогательного контакта положения полюса 3 (сигнал «inS3») до момента размыкания главного контакта полюса 3", true, -32.0, 32.0, 0.1, "мс"),
                new Parameter("PTOn1", "Cобственное время включения полюса 1", true, 0.0, 120.0, 0.1, "мс"),
                new Parameter("PTOn2", "Cобственное время включения полюса 2", true, 0.0, 120.0, 0.1, "мс"),
                new Parameter("PTOn3", "Cобственное время включения полюса 3", true, 0.0, 120.0, 0.1, "мс"),
                new Parameter("PTOff1", "Cобственное время отключения полюса 1", true, 0.0, 120.0, 0.1, "мс"),
                new Parameter("PTOff2", "Cобственное время отключения полюса 2", true, 0.0, 120.0, 0.1, "мс"),
                new Parameter("PTOff3", "Cобственное время отключения полюса 3", true, 0.0, 120.0, 0.1, "мс"),
                // Параметры синхронизации
                new Parameter("PsPhOn1", "Заданная фаза включения полюса 1", true, -180, 180, 1, "градус"),
                new Parameter("PsPhOn2", "Заданная фаза включения полюса 2", true, -180, 180, 1, "градус"),
                new Parameter("PsPhOn3", "Заданная фаза включения полюса 3", true, -180, 180, 1, "градус"),
                new Parameter("PsPhOff1", "Заданная фаза отключения полюса 1", true, -180, 180, 1, "градус"),
                new Parameter("PsPhOff2", "Заданная фаза отключения полюса 2", true, -180, 180, 1, "градус"),
                new Parameter("PsPhOff3", "Заданная фаза отключения полюса 3", true, -180, 180, 1, "градус"),
                new Parameter("PsSync1", "Синхронизация по напряжению полюса 1", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsSync2", "Синхронизация по напряжению полюса 2", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsSync3", "Синхронизация по напряжению полюса 3", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAN", "Адаптация к собственному времени срабатывания полюсов при прошлых коммутациях", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAU", "Адаптация к напряжению на электромагнитах", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAPause", "Адаптация к времени безоперационного простоя выключателя", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAT", "Адаптация к температуре окружающей среды", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsATd", "Адаптация к температуре в приводах полюсов", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAP", "Адаптация к давлению в гидроприводе полюсов", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAhC", "Автоподстройка задания фазы включения конденсаторной батареи", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAhL", "Автоподстройка задания фазы включения шунтирующего реактора", false, 0, 1, 1, "включена / отключена"),
                new Parameter("PsAUo", "Автоподстройка задания фазы включения на остаточное напряжение на отводящей линии", false, 0, 1, 1, "включена / отключена"),
                // Параметры адаптации
                // Зависимость поправки к собственному времени срабатывания от напряжения на электромагнитах полюсов
                new Parameter("PaUemNorm", "Номинальное напряжение на электромагнитах выключателя", false, 100, 300, 1, "В"),
                new Parameter("PadUemOn1", "Значение №1 напряжения на электромагнитах для операции включения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOn1", "Поправка времени включения полюса в зависимости от PadUemOn1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOn2", "Значение №2 напряжения на электромагнитах для операции включения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOn2", "Поправка времени включения полюса в зависимости от PadUemOn2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOn3", "Значение №3 напряжения на электромагнитах для операции включения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOn3", "Поправка времени включения полюса в зависимости от PadUemOn3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOn4", "Значение №4 напряжения на электромагнитах для операции включения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOn4", "Поправка времени включения полюса в зависимости от PadUemOn4", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOff1", "Значение №1 напряжения на электромагнитах для операции отключения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOff1", "Поправка времени отключения полюса в зависимости от PadUemOff1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOff2", "Значение №2 напряжения на электромагнитах для операции отключения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOff2", "Поправка времени отключения полюса в зависимости от PadUemOff2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOff3", "Значение №3 напряжения на электромагнитах для операции отключения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOff3", "Поправка времени отключения полюса в зависимости от PadUemOff3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PadUemOff4", "Значение №4 напряжения на электромагнитах для операции отключения", false, 0, 400, 1, "В"),
                new Parameter("PaTsUemOff4", "Поправка времени отключения полюса в зависимости от PadUemOff4", true, -20.0, 20.0, 0.1, "мс"),
                // Зависимость поправки к собственному времени срабатывания от времени безоперационного простоя полюса
                new Parameter("PaTpOn1", "Значение №1 времени прошедшего от прошлого включения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOn1", "Значение №1 времени прошедшего от прошлого включения полюса", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOn2", "Значение №2 времени прошедшего от прошлого включения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOn2", "Поправка времени включения полюса в зависимости от PaTpOn2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOn3", "Значение №3 времени прошедшего от прошлого включения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOn3", "Поправка времени включения полюса в зависимости от PaTpOn3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOn4", "Значение №4 времени прошедшего от прошлого включения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOn4", "Поправка времени включения полюса в зависимости от PaTpOn4", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOff1", "Значение №1 времени прошедшего от прошлого отключения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOff1", "Значение №1 времени прошедшего от прошлого отключения полюса", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOff2", "Значение №2 времени прошедшего от прошлого отключения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOff2", "Поправка времени отключения полюса в зависимости от PaTpOff2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOff3", "Значение №3 времени прошедшего от прошлого отключения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOff3", "Поправка времени отключения полюса в зависимости от PaTpOff3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTpOff4", "Значение №4 времени прошедшего от прошлого отключения полюса", false, 0, 1000000000, 1, "с"),
                new Parameter("PaTsTpOff4", "Поправка времени отключения полюса в зависимости от PaTpOff4", true, -20.0, 20.0, 0.1, "мс"),
                // Зависимость поправки к собственному времени срабатывания от температуры окружающей среды
                new Parameter("PaTeNorm", "Температура окружающей среды при нормальных условиях", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTeOn1", "Значение №1 температуры окружающей среды для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOn1", "Поправка времени включения полюса в зависимости от PaTeOn1", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOn2", "Значение №2 температуры окружающей среды для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOn2", "Поправка времени включения полюса в зависимости от PaTeOn2", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOn3", "Значение №3 температуры окружающей среды для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOn3", "Поправка времени включения полюса в зависимости от PaTeOn3", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOn4", "Значение №4 температуры окружающей среды для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOn4", "Поправка времени включения полюса в зависимости от PaTeOn4", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOff1", "Значение №1 температуры окружающей среды для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOff1", "Поправка времени отключения полюса в зависимости от PaTeOff1", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOff2", "Значение №2 температуры окружающей среды для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOff2", "Поправка времени отключения полюса в зависимости от PaTeOff2", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOff3", "Значение №3 температуры окружающей среды для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOff3", "Поправка времени отключения полюса в зависимости от PaTeOff3", true, -20.0, 20.0, 0.1, "мc"),
                new Parameter("PaTeOff4", "Значение №4 температуры окружающей среды для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTeOff4", "Поправка времени отключения полюса в зависимости от PaTeOff4", true, -20.0, 20.0, 0.1, "мc"),
                // Зависимость поправки к собственному времени срабатывания от температуры в приводе
                new Parameter("PaTdNorm", "Температура в приводе полюса при нормальных условиях", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTdOn1", "Значение №1 температуры в приводе для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOn1", "Поправка времени включения полюса в зависимости от PaTdOn1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOn2", "Значение №2 температуры в приводе для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOn2", "Поправка времени включения полюса в зависимости от PaTdOn2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOn3", "Значение №3 температуры в приводе для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOn3", "Поправка времени включения полюса в зависимости от PaTdOn3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOn4", "Значение №4 температуры в приводе для операции включения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOn4", "Поправка времени включения полюса в зависимости от PaTdOn4", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOff1", "Значение №1 температуры в приводе для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOff1", "Поправка времени отключения полюса в зависимости от PaTdOff1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOff2", "Значение №2 температуры в приводе для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOff2", "Поправка времени отключения полюса в зависимости от PaTdOff2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOff3", "Значение №3 температуры в приводе для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOff3", "Поправка времени отключения полюса в зависимости от PaTdOff3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaTdOff4", "Значение №4 температуры в приводе для операции отключения", true, -60.0, 60.0, 1, "°С"),
                new Parameter("PaTsTdOff4", "Поправка времени отключения полюса в зависимости от PaTdOff4", true, -20.0, 20.0, 0.1, "мс"),
                // Зависимость поправки к собственному времени срабатывания от давления в гидроприводе
                new Parameter("PaPgdNorm", "Номинальное давление в гидроприводе полюса", false, 0, 5000, 1, "кПа"),
                new Parameter("PaPgdOn1", "Значение №1 давления в гидроприводе для операции включения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOn1", "Поправка времени включения полюса в зависимости от PaPgdOn1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOn2", "Значение №2 давления в гидроприводе для операции включения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOn2", "Поправка времени включения полюса в зависимости от PaPgdOn2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOn3", "Значение №3 давления в гидроприводе для операции включения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOn3", "Поправка времени включения полюса в зависимости от PaPgdOn3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOn4", "Значение №4 давления в гидроприводе для операции включения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOn4", "Поправка времени включения полюса в зависимости от PaPgdOn4", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOff1", "Значение №1 давления в гидроприводе для операции отключения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOff1", "Поправка времени отключения полюса в зависимости от PaPgdOff1", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOff2", "Значение №2 давления в гидроприводе для операции отключения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOff2", "Поправка времени отключения полюса в зависимости от PaPgdOff2", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOff3", "Значение №3 давления в гидроприводе для операции отключения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOff3", "Поправка времени отключения полюса в зависимости от PaPgdOff3", true, -20.0, 20.0, 0.1, "мс"),
                new Parameter("PaPgdOff4", "Значение №4 давления в гидроприводе для операции отключения", false, 0, 5000, 1, "кПа"),
                new Parameter("PaTsPgdOff4", "Поправка времени отключения полюса в зависимости от PaPgdOff4", true, -20.0, 20.0, 0.1, "мс"),
                // Поправка к собственному времени срабатывания в зависимости от времени срабатывания в предыдущих коммутациях
                new Parameter("PaNs", "Вычисления усреднённого значения собственного времени срабатывания полюса", false, 0, 10, 1, "раз"),
                // Параметры сигнализации
                new Parameter("PeTOnMinA", "Минимальное собственное время включения полюса ниже которого срабатывает предупредительная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOnMaxA", "Максимальное собственное время включения полюса при превышении которого срабатывает предупредительная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOffMinA", "Минимальное собственное время отключения полюса ниже которого срабатывает предупредительная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOffMaxA", "Максимальное собственное время отключения полюса при превышении которого срабатывает предупредительная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOnMinF", "Минимальное собственное время включения полюса ниже которого срабатывает тревожная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOnMaxF", "Максимальное собственное время включения полюса при превышении которого срабатывает тревожная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOffMinF", "Минимальное собственное время отключения полюса ниже которого срабатывает тревожная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeTOffMaxF", "Максимальное собственное время отключения полюса при превышении которого срабатывает тревожная сигнализация", false, 0, 200.0, 0.1, "мс"),
                new Parameter("PeErrOnA", "Погрешность включения полюса в заданную фазу напряжения сети при превышении которой срабатывает предупредительная сигнализация", false, 0, 180, 1, "эл°"),
                new Parameter("PeErrOffA", "Погрешность отключения полюса в заданную фазу напряжения сети при превышении которой срабатывает предупредительная сигнализация", false, 0, 180, 1, "эл°"),
                new Parameter("PeErrOnF", "Погрешность включения полюса в заданную фазу напряжения сети при превышении которой срабатывает тревожная сигнализация", false, 0, 180, 1, "эл°"),
                new Parameter("PeErrOffF", "Погрешность отключения полюса в заданную фазу напряжения сети при превышении которой срабатывает тревожная сигнализация", false, 0, 180, 1, "эл°"),
                new Parameter("PeIOnMaxA", "Мгновенная величина тока включения, при превышении которой срабатывает предупредительная сигнализация", false, 0, 65000, 1, "А"),
                new Parameter("PeIOnMaxF", "Мгновенная величина тока включения, при превышении которой срабатывает тревожная сигнализация", false, 0, 65000, 1, "А"),
                new Parameter("PeITdcOnA", "Время протекания постоянной составляющей тока при включении, при превышении которого срабатывает предупредительная сигнализация", false, 0, 20000, 1, "мс"),
                new Parameter("PeITdcOnF", "Время протекания постоянной составляющей тока при включении, при превышении которого срабатывает тревожная сигнализация", false, 0, 20000, 1, "мс"),
                new Parameter("PeITdcOffA", "Время горения дуги при отключении полюса, при превышении которого срабатывает предупредительная сигнализация", false, 0, 20000, 1, "мс"),
                new Parameter("PeITdcOffF", "Время горения дуги при отключении полюса, при превышении которого срабатывает тревожная сигнализация", false, 0, 20000, 1, "мс")
            ];
    }
    TableGenerator.prototype.generate = function (parent) {
        var table = document.createElement("table");
        var headerRow = document.createElement("tr");
        var idHeaderCell = document.createElement("th");
        idHeaderCell.innerText = "Параметр";
        var descriptionHeaderCell = document.createElement("th");
        descriptionHeaderCell.innerText = "Описание параметра и единица его измерения";
        var valueHeaderCell = document.createElement("th");
        valueHeaderCell.innerText = "Действующее значение параметра";
        var lastEditDateHeaderCell = document.createElement("th");
        lastEditDateHeaderCell.innerText = "Дата последнего изменения параметра";
        var lastEditTimeHeaderCell = document.createElement("th");
        lastEditTimeHeaderCell.innerText = "Время последнего изменения параметра";
        var newValueHeaderCell = document.createElement("th");
        newValueHeaderCell.innerText = "Новое значение параметра";
        var valueRangeHeaderCell = document.createElement("th");
        valueRangeHeaderCell.innerText = "Диапазон ввода";
        var emptyHeaderCell = document.createElement("th");
        headerRow.appendChild(idHeaderCell);
        headerRow.appendChild(descriptionHeaderCell);
        headerRow.appendChild(valueHeaderCell);
        headerRow.appendChild(lastEditDateHeaderCell);
        headerRow.appendChild(lastEditTimeHeaderCell);
        headerRow.appendChild(newValueHeaderCell);
        headerRow.appendChild(valueRangeHeaderCell);
        headerRow.appendChild(emptyHeaderCell);
        table.appendChild(headerRow);
        for (var i = 0; i < this.parameters.length; ++i) {
            var row = document.createElement("tr");
            var idCell = document.createElement("td");
            idCell.innerText = this.parameters[i].id;
            var descriptionCell = document.createElement("td");
            descriptionCell.innerText = this.parameters[i].description;
            var valueCell = document.createElement("td");
            valueCell.innerText = "-";
            var lastEditDateCell = document.createElement("td");
            lastEditDateCell.innerText = "-";
            var lastEditTimeCell = document.createElement("td");
            lastEditTimeCell.innerText = "-";
            var newValueCell = document.createElement("td");
            newValueCell.innerText = "-";
            var valueRangeCell = document.createElement("td");
            valueRangeCell.innerText = "-";
            var editCell = document.createElement("td");
            var editButton = document.createElement("button");
            var editButtonImage = new Image();
            editButtonImage.src = "http://www.icon100.com/up/3856/128/233-edit.png";
            //editButton.innerText = "Изменить";
            editButton.appendChild(editButtonImage);
            editCell.appendChild(editButton);
            row.appendChild(idCell);
            row.appendChild(descriptionCell);
            row.appendChild(valueCell);
            row.appendChild(lastEditDateCell);
            row.appendChild(lastEditTimeCell);
            row.appendChild(newValueCell);
            row.appendChild(valueRangeCell);
            row.appendChild(editCell);
            table.appendChild(row);
        }
        parent.appendChild(table);
    };
    return TableGenerator;
}());
//# sourceMappingURL=TableGenerator.js.map