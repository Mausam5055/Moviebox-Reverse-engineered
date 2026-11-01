package com.transsion.subtitle.helper;

import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.SubtitleBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e {
    public static final Locale a() {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_language_short_name", null);
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
        if (!Intrinsics.c(locale.getLanguage(), string) && string != null && string.length() > 0) {
            return new Locale(string, locale.getCountry());
        }
        Intrinsics.e(locale);
        return locale;
    }

    public static final String b(eu.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        String fileCharsetName;
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null && (fileCharsetName = subtitleDownloadTableB.getFileCharsetName()) != null) {
            return fileCharsetName;
        }
        String strName = Charsets.UTF_8.name();
        Intrinsics.g(strName, "name(...)");
        return strName;
    }

    public static final boolean c(String language, List list) {
        String upperCase;
        Intrinsics.h(language, "language");
        Intrinsics.h(list, "list");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String lan = ((SubtitleBean) it.next()).getLan();
            if (lan != null) {
                upperCase = lan.toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
            } else {
                upperCase = null;
            }
            String upperCase2 = language.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase2, "toUpperCase(...)");
            if (Intrinsics.c(upperCase, upperCase2)) {
                return true;
            }
        }
        return false;
    }

    public static final void d(List list) {
        Intrinsics.h(list, "list");
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
        int size = list.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            }
            SubtitleLanguageMapBean subtitleLanguageMapBean = (SubtitleLanguageMapBean) list.get(i11);
            if (Intrinsics.c(Intrinsics.c(subtitleLanguageMapBean.getLan(), "in_id") ? "in" : subtitleLanguageMapBean.getLan(), locale.getLanguage())) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 > 0) {
            list.add(0, (SubtitleLanguageMapBean) list.remove(i11));
        }
    }
}
