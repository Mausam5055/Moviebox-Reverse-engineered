package com.transsion.lib_web.zip.loader;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashSet;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"com/transsion/lib_web/zip/loader/CacheExtensionConfig$Companion$STATIC$1", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CacheExtensionConfig$Companion$STATIC$1 extends HashSet<String> {
    CacheExtensionConfig$Companion$STATIC$1() {
        add("html");
        add("htm");
        add("js");
        add("ico");
        add("css");
        add("png");
        add("jpg");
        add("jpeg");
        add("gif");
        add("bmp");
        add("ttf");
        add("woff");
        add("woff2");
        add("otf");
        add("eot");
        add("svg");
        add("xml");
        add("swf");
        add("txt");
        add(MimeTypes.BASE_TYPE_TEXT);
        add("conf");
        add("webp");
    }

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return contains((String) obj);
        }
        return false;
    }

    public /* bridge */ boolean contains(String str) {
        return super.contains((Object) str);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return false;
    }

    public /* bridge */ boolean remove(String str) {
        return super.remove((Object) str);
    }

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
