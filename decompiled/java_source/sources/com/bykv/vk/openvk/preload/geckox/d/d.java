package com.bykv.vk.openvk.preload.geckox.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends com.bykv.vk.openvk.preload.b.d<List<String>, List<Pair<String, Long>>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f20677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f20678e;

    @Override // com.bykv.vk.openvk.preload.b.d
    public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.b.b<List<Pair<String, Long>>> bVar, List<String> list) throws Throwable {
        List<String> list2 = list;
        GeckoLogger.d("gecko-debug-tag", "get local channel version:", list2);
        File file = new File(this.f20677d, this.f20678e);
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            Long lA = com.bykv.vk.openvk.preload.geckox.utils.g.a(new File(file, str));
            arrayList.add(new Pair<>(str, Long.valueOf(lA == null ? 0L : lA.longValue())));
        }
        return bVar.a(arrayList);
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    protected final void a(Object... objArr) {
        super.a(objArr);
        this.f20677d = (File) objArr[0];
        this.f20678e = (String) objArr[1];
    }
}
