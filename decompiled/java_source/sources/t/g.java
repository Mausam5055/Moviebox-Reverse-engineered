package t;

import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
public interface g extends Map, KMappedMarker {

    public interface a extends Map, KMutableMap {
        g build();
    }

    a builder();
}
