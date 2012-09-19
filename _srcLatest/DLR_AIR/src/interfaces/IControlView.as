package interfaces
{
  import Model.Prompts.Prompt;

  public interface IControlView
  {
    // этот метод вызывается автоматически для всех контроллов реализующих этот интерфейс,
    // кроме mxml-компонентов, которые создаются НЕ через соответствующие "as" контроллы
    function Init(prompt:IBasePrompt):void;
  }
}