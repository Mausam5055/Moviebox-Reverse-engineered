package ox;

import android.app.PictureInPictureParams;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.player.orplayer.g;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.manager.VideoPipManagerImp;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes7.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f72197a = a.f72198a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f72198a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Lazy f72199b = LazyKt.b(new Function0() { // from class: ox.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.a.c();
            }
        });

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final VideoPipManagerImp c() {
            return new VideoPipManagerImp();
        }

        public final e b() {
            return (e) f72199b.getValue();
        }
    }

    public static final class b {
        public static /* synthetic */ void a(e eVar, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: closePip");
            }
            if ((i11 & 1) != 0) {
                z10 = true;
            }
            eVar.d(z10);
        }

        public static /* synthetic */ void b(e eVar, FragmentActivity fragmentActivity, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unregisterReceiver");
            }
            if ((i11 & 1) != 0) {
                fragmentActivity = null;
            }
            eVar.i(fragmentActivity);
        }

        public static /* synthetic */ PictureInPictureParams c(e eVar, FragmentActivity fragmentActivity, boolean z10, boolean z11, ViewGroup viewGroup, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePictureInPictureParams");
            }
            if ((i11 & 4) != 0) {
                z11 = true;
            }
            if ((i11 & 8) != 0) {
                viewGroup = null;
            }
            return eVar.a(fragmentActivity, z10, z11, viewGroup);
        }
    }

    PictureInPictureParams a(FragmentActivity fragmentActivity, boolean z10, boolean z11, ViewGroup viewGroup);

    boolean b(String str);

    boolean c();

    void d(boolean z10);

    void e();

    boolean f(g gVar);

    boolean g();

    void h(FragmentActivity fragmentActivity, px.a aVar);

    void i(FragmentActivity fragmentActivity);

    boolean isPlaying();

    boolean j();

    void k(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, boolean z10);

    void onPipModeChanged(boolean z10);
}
