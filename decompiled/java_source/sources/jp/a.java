package jp;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.provider.MediaStore;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.publish.api.AudioEntity;
import io.reactivex.rxjava3.core.k;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f66248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ContentResolver f66249b;

    public a(Context context) {
        Intrinsics.h(context, "context");
        this.f66248a = context;
        this.f66249b = context.getContentResolver();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ed  */
    public final void a(k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        if (Environment.getExternalStorageState().equals("mounted")) {
            Cursor cursorQuery = null;
            try {
                String[] strArr = {"_id", "_data", "_size", "mime_type", CampaignEx.JSON_KEY_TITLE, "artist", "duration"};
                try {
                    try {
                        ContentResolver contentResolver = this.f66249b;
                        cursorQuery = contentResolver != null ? contentResolver.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, null, null, "date_added DESC") : null;
                        boolean z10 = false;
                        while (cursorQuery != null && cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex(CampaignEx.JSON_KEY_TITLE));
                            Intrinsics.g(string, "getString(...)");
                            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                            Intrinsics.g(string2, "getString(...)");
                            long j11 = cursorQuery.getLong(cursorQuery.getColumnIndex("_size"));
                            String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("artist"));
                            Intrinsics.g(string3, "getString(...)");
                            long j12 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("duration"));
                            AudioEntity audioEntity = new AudioEntity();
                            audioEntity.setImageTitle(string);
                            audioEntity.setLocalPath(string2);
                            audioEntity.setSize(j11);
                            audioEntity.setThumbPath("");
                            audioEntity.setArtist(string3);
                            audioEntity.setDuration(Long.valueOf(j12));
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("size:");
                            sb2.append(j11);
                            sb2.append(",path:");
                            sb2.append(string2);
                            sb2.append(",duration:");
                            sb2.append(j12);
                            if (emitter.isDisposed()) {
                                cursorQuery.close();
                                return;
                            } else {
                                emitter.onNext(audioEntity);
                                z10 = true;
                            }
                        }
                        if (!z10) {
                            emitter.onNext(new AudioEntity());
                        }
                        if (cursorQuery == null) {
                            return;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        e.printStackTrace();
                        if (cursorQuery == null) {
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
            } catch (Throwable th3) {
                th = th3;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
            cursorQuery.close();
        }
    }
}
