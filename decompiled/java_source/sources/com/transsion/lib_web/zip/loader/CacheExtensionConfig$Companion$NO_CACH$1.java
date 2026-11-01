package com.transsion.lib_web.zip.loader;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashSet;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"com/transsion/lib_web/zip/loader/CacheExtensionConfig$Companion$NO_CACH$1", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CacheExtensionConfig$Companion$NO_CACH$1 extends HashSet<String> {
    CacheExtensionConfig$Companion$NO_CACH$1() {
        add("mp4");
        add("mp3");
        add("ogg");
        add("avi");
        add("wmv");
        add("flv");
        add("rmvb");
        add(RecorderConstants.FORMAT_3GP);
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
