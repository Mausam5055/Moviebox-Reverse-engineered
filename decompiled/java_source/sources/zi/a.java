package zi;

import android.text.TextUtils;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.f;
import com.transsion.room.api.IAudioApi;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class a implements IAudioApi {
    @Override // com.transsion.room.api.IAudioApi
    public boolean a(String audioUrl) {
        Intrinsics.h(audioUrl, "audioUrl");
        return AudioPlayer.f42889i.a().z(audioUrl);
    }

    @Override // com.transsion.room.api.IAudioApi
    public void addPlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        AudioPlayer.f42889i.a().m(listener);
    }

    @Override // com.transsion.room.api.IAudioApi
    public boolean b(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        return AudioPlayer.f42889i.a().y(audio);
    }

    @Override // com.transsion.room.api.IAudioApi
    public boolean c() {
        return AudioPlayer.f42889i.a().p();
    }

    @Override // com.transsion.room.api.IAudioApi
    public void d(AudioBean audio, boolean z10) {
        Intrinsics.h(audio, "audio");
        AudioPlayer.a aVar = AudioPlayer.f42889i;
        AudioBean audioBeanT = aVar.a().t();
        if (TextUtils.equals(audioBeanT != null ? audioBeanT.getAudioUrl() : null, audio.getAudioUrl())) {
            if (aVar.a().J()) {
                return;
            }
            aVar.a().K();
            return;
        }
        HistoryListManager.a aVar2 = HistoryListManager.f42961e;
        aVar2.b().w(audio);
        aVar.a().L(audio);
        com.transsion.audio.view.d.k().t(audio);
        String subjectId = audio.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        String postId = audio.getPostId();
        String str2 = postId == null ? "" : postId;
        if (!z10 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        HistoryListManager.t(aVar2.b(), str, str2, 0, 4, null);
    }

    @Override // com.transsion.room.api.IAudioApi
    public long e() {
        return AudioPlayer.f42889i.a().s();
    }

    @Override // com.transsion.room.api.IAudioApi
    public boolean f() {
        return AudioPlayer.f42889i.a().J();
    }

    @Override // com.transsion.room.api.IAudioApi
    public void pause() {
        AudioPlayer.f42889i.a().G();
    }

    @Override // com.transsion.room.api.IAudioApi
    public void prepare() {
        AudioPlayer.f42889i.a().K();
    }

    @Override // com.transsion.room.api.IAudioApi
    public void removePlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        AudioPlayer.f42889i.a().O(listener);
    }

    @Override // com.transsion.room.api.IAudioApi
    public void seekTo(long j11) {
        AudioPlayer.f42889i.a().P(j11);
    }

    @Override // com.transsion.room.api.IAudioApi
    public void start() {
        AudioPlayer.f42889i.a().S();
    }

    @Override // com.transsion.room.api.IAudioApi
    public void stop() {
        AudioPlayer.f42889i.a().T();
    }
}
