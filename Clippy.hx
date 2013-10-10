import flash.display.MovieClip;
import flash.events.MouseEvent;
import flash.display.SimpleButton;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.external.ExternalInterface;

class ButtonUp extends MovieClip { public function new() { super(); } }
    
class ButtonOver extends MovieClip { public function new() { super(); } }
    
class ButtonDown extends MovieClip { public function new() { super(); } }

class Clippy {
  // Main
  static function main() {
    var text:String = flash.Lib.current.loaderInfo.parameters.text;

    flash.Lib.current.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
    flash.Lib.current.stage.align = flash.display.StageAlign.TOP_LEFT;

    var button:SimpleButton = new SimpleButton();
    button.useHandCursor = true;
    button.upState = flash.Lib.attach("ButtonUp");
    button.overState = flash.Lib.attach("ButtonOver");
    button.downState = flash.Lib.attach("ButtonDown");
    button.hitTestState = flash.Lib.attach("ButtonDown");

    button.addEventListener(MouseEvent.MOUSE_UP, function(e:MouseEvent) {
      flash.system.System.setClipboard(text);
    });

    flash.Lib.current.addChild(button);
  }
}
