import 'package:app/pages/train_categories/categories_trains.dart';
import 'package:flutter/material.dart';

class ChoosePower extends ChangeNotifier{
  final List<Workout> _power = [
    Workout(name: "Ягодичный мостик", description: "1.	Базовая позиция — лечь на пол, согнуть ноги в коленях. \n 2.	Основное движение — напрячь ягодичные мышцы и поднять бедра вверх, пока они не образуют со спиной прямую линию. \n 3.	В таком положении нужно задержаться на пару секунд и опуститься. \n 4.	Не стоит расслаблять ягодицы: они должны быть в постоянном напряжении на протяжении всей тренировки. \n 5.	Чтобы увеличить нагрузку, можно опереться плечами на диван и положить на сгиб бедер бутылку с водой."),
    Workout(name: "Пробежка по лестнице", description: "1.	Если вы живете в многоквартирном доме, не использовать лестницу для тренировок — фитнес-преступление. \n 2.	Начинать пробежку всегда нужно со спуска. \n 3.	Не спеша поднимитесь на верхний этаж и в хорошем темпе спускайтесь вниз. \n 4.	Сделайте паузу — вдох-выдох, и так же быстро поднимайтесь вверх. \n 5.	Повторите «забег» 5-6 раз."),
    Workout(name: "Выпады с гантелями на месте", description: "1.	Встаньте прямо, сделайте выпад левой ногой вперед. \n 2.	Расстояние между двумя ногами должно быть не меньше ширины плеч. \n 3.	Носок ноги в выпаде должен быть немного повернут внутрь, чтобы было легче удержать равновесие. Обе ноги прямые. \n 4.	Взгляд должен быть направлен прямо перед собой. В каждой руке — по гантели. \n 5.	На вдохе нужно опускаться вниз, сгибая обе ноги в коленях, поддаваясь немного вперед. Коленом правой ноги нельзя прикасаться к полу. \n 6.	На выдохе нужно возвращаться в исходное положение. Во время выполнения упражнения спина должна быть прямой. \n 7.	Повторите 10-15 раз."),
    Workout(name: "Отжимания", description: "1.	Тот, кто часто отжимается, всегда может рассчитывать на стальной пресс и подтянутые руки. Благо, что для этого упражнения никакого снаряжения не требуется. Отжимайтесь в несколько подходов, для старта — каждый сет по 5-10 раз. \n 2.	Чувствуете, что этого мало? Доводите количество в одном сете до 50 раз и увеличивайте кратность подходов."),
    Workout(name: "Планка", description: "1.	Планка требует совокупного напряжения мышц кора во время удерживания собственного веса. Главный фокус в том, чтобы выдерживать прямую линию спины, ног, головы. \n 2.	Для этого наблюдайте за собой в зеркало хотя бы первое время. \n 3.	Второй секрет выполнения – время: начните с удержания планки в течение 30 секунд, постепенно увеличивая время. \n 4.	Выполняйте каждый день по 3-5 повторений."),
    Workout(name: "Упражнения на пресс", description: "1.	Существует огромное количество упражнений на пресс. Начните с самого простого! Сядьте на коврик, носки ног разместите под опору (например, край дивана), ноги согните в коленях. \n 2.	Положите спину на пол. Сначала в умеренном, а потом в более интенсивном темпе поднимайтесь вверх и опускайтесь вниз. \n 3.	Внимательно следите за тем, чтобы нагрузка приходилась именно на пресс, а не на позвоночник. \n 4.	Спину не округляйте!"),
    Workout(name: "Приседания", description: "1.	Встаньте прямо, носки и колени разверните в стороны, а ноги широко расставьте. \n 2.	Начните медленно опускаться, сгибая колени и сохраняя спину прямой. \n 3.	Опуститесь вниз до тех пор, пока бедра не будут параллельны полу. \n 4.	Затем сделайте выдох и поднимитесь обратно в исходное положение."),
    Workout(name: "Глубокие боковые выпады", description: "1.	Встаньте прямо, ноги на ширине плеч. \n 2.	На счет раз сделайте выпад правой ногой вправо на максимальное расстояние, согнув ногу в колене и переместив на нее весь всего тела. \n 3.	Верните ногу в исходное положение. \n 4.	Повторите с другой ногой. Весь сет выполните 10-15 раз."),
    Workout(name: "Боковая планка", description: "1.	Примите положение боковой планки с упором на правую кисть/локоть, выбирайте подходящий вам по сложности вариант. Локоть/кисть строго под плечом. \n 2.	Ноги вытянуты в прямую линию. Левая нога лежит на правой или выставлена вперёд для создания более устойчивого положения. \n 3.	Тело – прямая линия от пяток до головы, взгляд – перед собой. \n 4.	Левую руку вытяните в сторону и вверх так, чтобы она оказалась в одной плоскости с правым плечом. \n 5.	На выдохе наклоните левую руку вперёд, затем заведите её под корпус, перейдя верхней частью тела в положение прямой планки. \n 6.	Ноги старайтесь держать неподвижными. Вернитесь в исходное положение. \n 7.	Выполните нужное количество повторений сначала на одну сторону, а потом – на другую. Для начала сделайте 5-10 повторов, со временем можете увеличивать количество."),
    Workout(name: "Прямая и обратная планка", description: "1.	Закончить сет упражнений поможет прямая планка. Примите упор лежа на вытянутых руках. Тело должен образовывать прямую линию без прогибов. \n 2.	Продержитесь в данном положении, сколько сможете. Отличный старт для начала — хотя бы 30 секунд. \n 3.	Теперь попробуйте сделать обратную планку. \n 4.	Лягте на спину, упор на локтях, ладони прижаты к полу. \n 5.	Поднимите таз, опираясь на локти и пятки. \n 6.	Тело должно быть, как вытянутая струна. \n 7.	Зафиксируйтесь в этом положение на 30 секунд. \n 8.	Если упражнение кажется легким, сделайте упор не на локти, а на ладони выпрямленных рук."),
  ];

  List<Workout> get power => _power;

  final List<Workout> _cart = [];
  List<Workout> get cart => _cart;

  void addToCart(Workout item) {
    if (!_cart.contains(item)) {
      _cart.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(Workout item) {
    if (_cart.contains(item)) {
      _cart.remove(item);
    }
    notifyListeners();
  }

  bool isInCart(Workout item) {
    return cart.contains(item);
  }
}