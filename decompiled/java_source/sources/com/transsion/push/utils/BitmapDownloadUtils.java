package com.transsion.push.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.transsion.push.bean.PushMessage;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class BitmapDownloadUtils {

    public interface a {
        void a(PushMessage pushMessage, HashMap map);
    }

    public static boolean a(PushMessage pushMessage) {
        return (!TextUtils.isEmpty(pushMessage.notiIcon) && URLUtil.isValidUrl(pushMessage.notiIcon)) || (!TextUtils.isEmpty(pushMessage.notiSmallIcon) && URLUtil.isValidUrl(pushMessage.notiSmallIcon)) || (!TextUtils.isEmpty(pushMessage.notiImgEx) && URLUtil.isValidUrl(pushMessage.notiImgEx));
    }

    public static void b(final PushMessage pushMessage, final a aVar) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.transsion.push.utils.BitmapDownloadUtils.1

            /* JADX INFO: renamed from: com.transsion.push.utils.BitmapDownloadUtils$1$a */
            class a implements m.d {
                a() {
                }

                @Override // com.transsion.push.utils.m.d
                public void a(HashMap map) {
                    PushLogUtils.LOG.g("images download complete");
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    a aVar = aVar;
                    if (aVar != null) {
                        aVar.a(pushMessage, map);
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(pushMessage.notiIcon)) {
                    arrayList.add(pushMessage.notiIcon);
                }
                if (!TextUtils.isEmpty(pushMessage.notiImgEx)) {
                    arrayList.add(pushMessage.notiImgEx);
                }
                if (!TextUtils.isEmpty(pushMessage.notiSmallIcon)) {
                    arrayList.add(pushMessage.notiSmallIcon);
                }
                if (!TextUtils.isEmpty(pushMessage.notiOptionalIcon)) {
                    arrayList.add(pushMessage.notiOptionalIcon);
                }
                if (arrayList.size() > 0) {
                    m.b(pushMessage.notiType, arrayList, new a());
                    return;
                }
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(pushMessage, null);
                }
            }
        });
    }
}
