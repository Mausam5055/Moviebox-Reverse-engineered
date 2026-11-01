package l5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k5.d;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap f68728a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f68729b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f68730c = new ArrayList();

    public final void a(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f68729b.put(subtitleMd5, "");
    }

    public final void b(Function2 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f68730c.contains(callback)) {
            return;
        }
        this.f68730c.add(callback);
    }

    public final void c() {
        this.f68728a.clear();
    }

    public final List d(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return (List) this.f68728a.get(subtitleMd5);
    }

    public final boolean e(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return this.f68728a.containsKey(subtitleMd5);
    }

    public final void f(String subtitleMd5, List subtitles) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        Intrinsics.h(subtitles, "subtitles");
        if (this.f68728a.size() > 10) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Set setKeySet = this.f68728a.keySet();
                Intrinsics.g(setKeySet, "subtitlesMap.keys");
                Object objH0 = CollectionsKt.h0(setKeySet);
                Intrinsics.g(objH0, "subtitlesMap.keys.first()");
                Result.m454constructorimpl((List) this.f68728a.remove((String) objH0));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        this.f68728a.put(subtitleMd5, subtitles);
    }

    public final boolean g() {
        return this.f68728a.isEmpty();
    }

    public final boolean h(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return this.f68729b.containsKey(subtitleMd5);
    }

    public final void i(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f68729b.remove(subtitleMd5);
    }

    public final void j(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f68728a.remove(subtitleMd5);
    }

    public final void k(String subtitleMd5, d dVar) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        Iterator it = this.f68730c.iterator();
        while (it.hasNext()) {
            ((Function2) it.next()).invoke(subtitleMd5, dVar);
        }
        this.f68730c.clear();
    }
}
