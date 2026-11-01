package com.transsion.shorttv.subtitle.manager;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public interface b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f53090a = a.f53091a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f53091a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Lazy f53092b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.subtitle.manager.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a.c();
            }
        });

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ShortTvVideoSubtitleManagerImp c() {
            return new ShortTvVideoSubtitleManagerImp();
        }

        public final b b() {
            return (b) f53092b.getValue();
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.subtitle.manager.b$b, reason: collision with other inner class name */
    public static final class C0664b {
        public static /* synthetic */ void a(b bVar, ts.a aVar, Function1 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPageInNet2CheckSubtitle");
            }
            if ((i11 & 2) != 0) {
                function1 = null;
            }
            bVar.g(aVar, function1);
        }
    }

    Object a(String str, Continuation continuation);

    void b(com.transsion.subtitle_download.a aVar);

    void c(com.transsion.subtitle_download.a aVar);

    void d(ts.b bVar);

    void e(vs.a aVar);

    void f(vs.a aVar);

    void g(ts.a aVar, Function1 function1);

    void init();
}
