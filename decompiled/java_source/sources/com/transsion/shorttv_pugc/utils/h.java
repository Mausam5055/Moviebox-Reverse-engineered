package com.transsion.shorttv_pugc.utils;

import androidx.p009lifecycle.b0;
import com.tencent.mmkv.MMKV;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f54448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f54449e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static st.b f54453i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f54445a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f54446b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.utils.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.i();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f54447c = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.utils.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.j();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f54450f = 20;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f54451g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static CopyOnWriteArrayList f54452h = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final b0 f54454j = new b0();

    private h() {
    }

    private final st.b c() {
        st.b bVarH = f54453i;
        if (bVarH == null) {
            tt.a aVarB = ys.a.f79056a.b();
            bVarH = aVarB != null ? aVarB.h() : null;
            f54453i = bVarH;
        }
        return bVarH;
    }

    private final int d() {
        int iOptInt;
        String strA;
        if (f54448d <= 0) {
            try {
                st.b bVarC = c();
                iOptInt = (bVarC == null || (strA = bVarC.a()) == null) ? f54450f : new JSONObject(strA).optInt("maxUnlockCount");
            } catch (Exception unused) {
                iOptInt = f54450f;
            }
            f54448d = iOptInt;
        }
        return f54448d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV i() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV j() {
        MMKV mmkvI = MMKV.I("kv_app");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final int e(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return f().getInt(subjectId, d());
    }

    public final MMKV f() {
        return (MMKV) f54446b.getValue();
    }

    public final MMKV g() {
        return (MMKV) f54447c.getValue();
    }

    public final int h() {
        int iOptInt;
        String strA;
        if (f54449e <= 0) {
            try {
                st.b bVarC = c();
                iOptInt = (bVarC == null || (strA = bVarC.a()) == null) ? f54451g : new JSONObject(strA).optInt("perUnlockCount");
            } catch (Exception unused) {
                iOptInt = f54451g;
            }
            f54449e = iOptInt;
        }
        return f54449e;
    }

    public final void k(String subjectId, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        f().putInt(subjectId, i11);
        Iterator it = f54452h.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
        }
    }
}
