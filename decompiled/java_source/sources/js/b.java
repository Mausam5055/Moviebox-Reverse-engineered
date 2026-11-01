package js;

import com.transsion.shorttv.bean.PreVideoAddress;
import com.transsion.shorttv.bean.Video;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final Video a(PreVideoAddress preVideoAddress) {
        Intrinsics.h(preVideoAddress, "<this>");
        Integer bitrate = preVideoAddress.getBitrate();
        String definition = preVideoAddress.getDefinition();
        Integer numValueOf = definition != null ? Integer.valueOf(Integer.parseInt(definition)) : null;
        Integer duration = preVideoAddress.getDuration();
        Integer fps = preVideoAddress.getFps();
        Integer height = preVideoAddress.getHeight();
        Long size = preVideoAddress.getSize();
        return new Video(bitrate, numValueOf, duration, fps, height, size != null ? Integer.valueOf((int) size.longValue()) : null, preVideoAddress.getUrl(), preVideoAddress.getWidth(), preVideoAddress.getResolution());
    }
}
