package mikolka.compatibility;

import flixel.graphics.FlxGraphic;
import openfl.media.Sound;
import flixel.graphics.frames.FlxAtlasFrames;

class FunkinPath {

    public static function animateAtlas(path:String,lib:String = "preload"):String {
        return Paths.getSharedPath("images/"+path);
    }
    public static function getPath(path:String):String {
        return Paths.getSharedPath(path);
    }

    public static function sound(key:String):String {
        return key;//Paths.getPath("sounds/"+Language.getFileTranslation(key) + '.ogg', SOUND, null, true);
        //We'll handle this later in FunkinSound
    }
    public static function music(key:String):Sound {
        
        return Paths.music(key);
    }

    public static function image(s:String) {
        return Paths.image(s);
    }

    public static function getSparrowAtlas(s:String):FlxAtlasFrames {
        return Paths.getSparrowAtlas(s);
    }

    public static function noGpuImage(s:String):FlxGraphic {
        return Paths.image(s,null,false);
    }

    public static function exists(s:String):Bool {
        // Check if a file exists somethere
        return Paths.fileExists(s,SOUND);
    }
    public static function stripLibrary(path:String):String
        {
          var parts:Array<String> = path.split(':');
          if (parts.length < 2) return path;
          return parts[1];
        }
    //! used by FileSystem
    public static function file(s:String) { // this returns a full path to the file
        return Paths.getSharedPath(s);
    }
}