package us;

import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.utils.h;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import ts.b;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static final Locale a() {
        String string = h.f53653a.e().getString("k_language_short_name", null);
        Locale locale = Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale;
        if (!Intrinsics.c(locale.getLanguage(), string) && string != null && string.length() > 0) {
            return new Locale(string, locale.getCountry());
        }
        Intrinsics.e(locale);
        return locale;
    }

    public static final String b(b bVar) {
        SubtitleDownloadTable subtitleDownloadTableA;
        String fileCharsetName;
        if (bVar != null && (subtitleDownloadTableA = bVar.a()) != null && (fileCharsetName = subtitleDownloadTableA.getFileCharsetName()) != null) {
            return fileCharsetName;
        }
        String strName = Charsets.UTF_8.name();
        Intrinsics.g(strName, "name(...)");
        return strName;
    }
}
