package jp;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.provider.MediaStore;
import com.transsion.publish.api.PhotoEntity;
import io.reactivex.rxjava3.core.k;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f66250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ContentResolver f66251b;

    public b(Context context) {
        Intrinsics.h(context, "context");
        this.f66250a = context;
        this.f66251b = context.getContentResolver();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x013a A[Catch: all -> 0x00e0, Exception -> 0x00e4, TRY_LEAVE, TryCatch #9 {Exception -> 0x00e4, all -> 0x00e0, blocks: (B:15:0x0053, B:17:0x005a, B:37:0x00dc, B:46:0x00ee, B:48:0x013a, B:53:0x0146, B:54:0x0149, B:56:0x014c), top: B:72:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x016e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0140 A[SYNTHETIC] */
    public final void a(k emitter) throws Throwable {
        Cursor cursor;
        Cursor cursorQuery;
        PhotoEntity photoEntity;
        Intrinsics.h(emitter, "emitter");
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return;
        }
        try {
            String[] strArr = {"_id", "_data", "_size", "mime_type", "height", "width", "_display_name"};
            ContentResolver contentResolver = this.f66251b;
            Cursor cursorQuery2 = contentResolver != null ? contentResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "mime_type=? or mime_type=? or mime_type=? or mime_type =?", new String[]{"image/jpeg", "image/png", "image/gif", "image/webp"}, "date_added DESC") : null;
            boolean z10 = false;
            while (cursorQuery2 != null) {
                try {
                    if (!cursorQuery2.moveToNext()) {
                        break;
                    }
                    String string = cursorQuery2.getString(cursorQuery2.getColumnIndex("_display_name"));
                    Intrinsics.g(string, "getString(...)");
                    String string2 = cursorQuery2.getString(cursorQuery2.getColumnIndex("_data"));
                    Intrinsics.g(string2, "getString(...)");
                    int i11 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("_size")) / 1024;
                    int i12 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("width"));
                    int i13 = cursorQuery2.getInt(cursorQuery2.getColumnIndex("height"));
                    String string3 = cursorQuery2.getString(cursorQuery2.getColumnIndex("_id"));
                    String str = "";
                    try {
                        ContentResolver contentResolver2 = this.f66251b;
                        cursorQuery = contentResolver2 != null ? contentResolver2.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data", "image_id"}, "image_id=?", new String[]{string3}, null) : null;
                        if (cursorQuery != null) {
                            try {
                                try {
                                    if (cursorQuery.moveToFirst()) {
                                        String string4 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                        Intrinsics.g(string4, "getString(...)");
                                        str = string4;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    throw th;
                                }
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                if (cursorQuery != null) {
                                }
                                lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "size:" + i11 + ",path:" + string2 + ",thumbPath:" + str, false, 4, null);
                                photoEntity = new PhotoEntity();
                                photoEntity.setImageTitle(string);
                                photoEntity.setLocalPath(string2);
                                photoEntity.setImageSize((long) i11);
                                photoEntity.setThumbPath(str);
                                photoEntity.setHeight(i13);
                                photoEntity.setWidth(i12);
                                if (!emitter.isDisposed()) {
                                    cursorQuery2.close();
                                    return;
                                } else {
                                    emitter.onNext(photoEntity);
                                    z10 = true;
                                }
                            }
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    } catch (Exception e12) {
                        e = e12;
                        cursorQuery = null;
                    } catch (Throwable th3) {
                        th = th3;
                        cursorQuery = null;
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "SelectVideoManager", "size:" + i11 + ",path:" + string2 + ",thumbPath:" + str, false, 4, null);
                    photoEntity = new PhotoEntity();
                    photoEntity.setImageTitle(string);
                    photoEntity.setLocalPath(string2);
                    photoEntity.setImageSize((long) i11);
                    photoEntity.setThumbPath(str);
                    photoEntity.setHeight(i13);
                    photoEntity.setWidth(i12);
                    if (!emitter.isDisposed()) {
                        cursorQuery2.close();
                        return;
                    } else {
                        emitter.onNext(photoEntity);
                        z10 = true;
                    }
                } catch (Exception e13) {
                    e = e13;
                    cursor = cursorQuery2;
                    try {
                        e.printStackTrace();
                        emitter.onNext(new PhotoEntity());
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } catch (Throwable th4) {
                        th = th4;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cursor = cursorQuery2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (!z10) {
                emitter.onNext(new PhotoEntity());
            }
            if (cursorQuery2 != null) {
                cursorQuery2.close();
            }
        } catch (Exception e14) {
            e = e14;
            cursor = null;
        } catch (Throwable th6) {
            th = th6;
            cursor = null;
        }
    }
}
