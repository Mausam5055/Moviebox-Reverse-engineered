package lj;

import android.os.Environment;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.mb.config.manager.ConfigBean;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68866a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f68867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f68868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f68869d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f68869d;
        }

        public final String b() {
            return b.f68867b;
        }

        public final File c() {
            File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            return externalFilesDir == null ? Utils.a().getFilesDir() : externalFilesDir;
        }

        public final int d() {
            Integer numV;
            ConfigBean configBeanC = sm.f.f75407c.a().c("download_buffer_size", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
                return 8192;
            }
            return numV.intValue();
        }

        public final String e() {
            File externalFilesDir = Utils.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDir == null && (externalFilesDir = Utils.a().getFilesDir()) == null) {
                externalFilesDir = Utils.a().getCacheDir();
            }
            return externalFilesDir.getAbsolutePath() + File.separatorChar + DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D;
        }

        public final String f() {
            return b.f68868c;
        }
    }

    static {
        String str = Environment.DIRECTORY_DCIM;
        String str2 = File.separator;
        f68867b = str + str2 + "MovieBox";
        f68868c = Environment.DIRECTORY_DOWNLOADS + str2 + "MovieBox";
        f68869d = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separatorChar + Environment.DIRECTORY_DCIM + str2 + "MovieBox";
    }
}
