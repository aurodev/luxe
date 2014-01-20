
    //mode management code
import luxe.Color;
import luxe.Vector;
import luxe.States;

    //the game classes
import luxe.Input;


class Game extends luxe.Game {

    public var states : States;
    
    var mainMenu : menus.Menu;
    var manager : systems.Manager;

    public function ready() {

        Luxe.renderer.clear_color = new Color();
        
        states = new States();
            //menus
        mainMenu = states.add_state(menus.Menu, 'menu', this);
            //the game manager
        manager = states.add_state(systems.Manager, 'manager', this);

            //start up the menu mode
        states.init();
            //and set to that mode
        states.set('menu');

    }   

    public function prerender() {
        states.prerender();
    }
 
    public function onkeydown(e) {
        states.onkeydown(e);
    }
    public function onkeyup(e) {
        states.onkeyup(e);
    }

    public function onmousedown(e : MouseEvent) {
        states.onmousedown(e);
    }   

    public function onmousemove(e : MouseEvent) {
        states.onmousemove(e);
    }

    public function onmouseup(e : MouseEvent) {
        states.onmouseup(e);
    }

    public function update(dt:Float) {
        states.update(dt);
    }

    public function destroyed() {

    }

}


