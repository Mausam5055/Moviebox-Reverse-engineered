package com.transsion.player.exo;

import android.app.Notification;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.exoplayer.scheduler.PlatformScheduler;
import co.a;
import com.transsion.player.R$mipmap;
import com.transsion.player.R$string;
import f2.f;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DemoDownloadService extends DownloadService {
    public DemoDownloadService() {
        super(0, 1000L, "download_channel", R$string.exo_download_notification_channel_name, 0);
    }

    @Override // androidx.media3.exoplayer.offline.DownloadService
    protected DownloadManager m() {
        DownloadManager downloadManagerH = a.h(this);
        a.i(this);
        return downloadManagerH;
    }

    @Override // androidx.media3.exoplayer.offline.DownloadService
    protected Notification n(List list, int i11) {
        return a.i(this).b(this, R$mipmap.player_ic_download, null, null, list, i11);
    }

    @Override // androidx.media3.exoplayer.offline.DownloadService
    protected f q() {
        if (a1.f10350a >= 21) {
            return new PlatformScheduler(this, 1);
        }
        return null;
    }
}
