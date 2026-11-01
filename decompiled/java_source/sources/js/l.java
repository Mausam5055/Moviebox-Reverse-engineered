package js;

import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l {
    public static final boolean a(e eVar) {
        ShortTVItem shortTVItemD;
        Media video;
        return ((eVar == null || (shortTVItemD = eVar.d()) == null || (video = shortTVItemD.getVideo()) == null) ? null : video.getVideoAddress()) != null;
    }

    public static final boolean b(e eVar) {
        Media video;
        if (eVar != null) {
            ShortTVItem shortTVItemD = eVar.d();
            if (((shortTVItemD == null || (video = shortTVItemD.getVideo()) == null) ? null : video.getVideoAddress()) != null) {
                return false;
            }
        }
        return true;
    }
}
