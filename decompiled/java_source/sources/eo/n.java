package eo;

import android.content.Context;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61970a = a.f61971a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f61971a = new a();

        private a() {
        }

        public final n a(Context context, ViewGroup viewGroup) {
            Intrinsics.h(context, "context");
            return new m(context, viewGroup);
        }
    }

    void a(float f11, float f12);

    float b();

    int c();

    void d(float f11, float f12, int i11);

    void e(com.transsion.player.orplayer.g gVar);

    void f(boolean z10);

    void g();
}
