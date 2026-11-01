package com.transsnet.downloader.ugc.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class UGCDownloadCollectionListActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCDownloadCollectionListActivity) {
            UGCDownloadCollectionListActivity uGCDownloadCollectionListActivity = (UGCDownloadCollectionListActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", uGCDownloadCollectionListActivity, new b("int", "parent_position", 0, "", "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity", "parentPosition", false, "No desc."));
                    if (num != null) {
                        uGCDownloadCollectionListActivity.parentPosition = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", uGCDownloadCollectionListActivity, new b("java.lang.String", "collection_id", 0, "", "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity", "collectionId", false, "No desc."));
                    if (str != null) {
                        uGCDownloadCollectionListActivity.collectionId = str;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", uGCDownloadCollectionListActivity, new b("java.lang.String", "name", 0, "", "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity", "name", false, "No desc."));
                    if (str2 != null) {
                        uGCDownloadCollectionListActivity.name = str2;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", uGCDownloadCollectionListActivity, new b("java.lang.String", "subject_id", 0, "", "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity", "subjectId", false, "No desc."));
                    if (str3 != null) {
                        uGCDownloadCollectionListActivity.subjectId = str3;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
            }
        }
    }
}
