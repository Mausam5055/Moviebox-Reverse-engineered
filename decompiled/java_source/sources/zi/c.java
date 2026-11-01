package zi;

import android.app.Activity;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.room.api.IFloatingApi;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class c implements IFloatingApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f79426a;

    @Override // com.transsion.room.api.IFloatingApi
    public void a(WeakReference refer, AudioBean audioBean) {
        Intrinsics.h(refer, "refer");
        Intrinsics.h(audioBean, "audioBean");
        com.transsion.audio.view.d.k().d((Activity) refer.get(), audioBean);
        com.transsion.audio.view.d.k().f((Activity) refer.get());
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void b() {
        com.transsion.audio.view.d.k().s();
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void c() {
        AudioPlayer.a aVar = AudioPlayer.f42889i;
        if (aVar.a().J()) {
            aVar.a().G();
            this.f79426a = true;
        }
        hide();
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void d(IFloatingApi.a aVar) {
        com.transsion.audio.view.d.k().v(aVar);
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void e() {
        if (this.f79426a) {
            AudioPlayer.f42889i.a().S();
            this.f79426a = false;
            show();
        }
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void f(String name) {
        Intrinsics.h(name, "name");
        com.transsion.audio.view.d.k().x(name);
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void g(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        com.transsion.audio.view.d.k().f((Activity) refer.get());
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void h() {
        com.transsion.audio.view.d.k().r();
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void hide() {
        com.transsion.audio.view.d.k().w(8);
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void i(WeakReference refer) {
        Intrinsics.h(refer, "refer");
        com.transsion.audio.view.d.k().h((Activity) refer.get());
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void j(IFloatingApi.a aVar) {
        com.transsion.audio.view.d.k().u(aVar);
    }

    @Override // com.transsion.room.api.IFloatingApi
    public void show() {
        com.transsion.audio.view.d.k().w(0);
    }
}
