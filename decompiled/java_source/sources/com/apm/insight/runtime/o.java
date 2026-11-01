package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f19832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f19833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f19834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f19835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f19836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f19837f = null;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f19840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f19841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private File f19842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private JSONObject f19843d;

        private a(File file) {
            this.f19843d = null;
            this.f19842c = file;
            String[] strArrSplit = file.getName().split("-|\\.");
            if (strArrSplit.length >= 2) {
                this.f19840a = Long.parseLong(strArrSplit[0]);
                this.f19841b = Long.parseLong(strArrSplit[1]);
                return;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name) || name.length() < 13) {
                return;
            }
            String strSubstring = name.substring(0, 13);
            if (TextUtils.isDigitsOnly(strSubstring)) {
                long j11 = Long.parseLong(strSubstring);
                this.f19840a = j11;
                this.f19841b = j11;
            }
        }

        /* synthetic */ a(File file, byte b11) {
            this(file);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject a() {
            if (this.f19843d == null) {
                try {
                    this.f19843d = new JSONObject(com.apm.insight.l.f.a(this.f19842c.getAbsolutePath(), "\n"));
                } catch (Throwable unused) {
                }
                if (this.f19843d == null) {
                    this.f19843d = new JSONObject();
                }
            }
            return this.f19843d;
        }

        static /* synthetic */ boolean a(a aVar, long j11) {
            long j12 = aVar.f19840a;
            if (j12 > j11 && j12 - j11 > 604800000) {
                return true;
            }
            long j13 = aVar.f19841b;
            if (j13 >= j11 || j11 - j13 <= 604800000) {
                return aVar.f19842c.lastModified() < j11 && j11 - aVar.f19842c.lastModified() > 604800000;
            }
            return true;
        }

        static /* synthetic */ void d(a aVar) {
            aVar.f19842c.delete();
        }
    }

    private o(Context context) {
        File fileC = com.apm.insight.l.j.c(context);
        if (!fileC.exists() || (!fileC.isDirectory() && fileC.delete())) {
            fileC.mkdirs();
            com.apm.insight.runtime.a.b.a();
        }
        this.f19833b = fileC;
        this.f19834c = new File(fileC, "did");
        this.f19835d = new File(fileC, "device_uuid");
        this.f19836e = context;
    }

    public static o a() {
        if (f19832a == null) {
            f19832a = new o(com.apm.insight.e.g());
        }
        return f19832a;
    }

    private void a(long j11, long j12, JSONObject jSONObject, JSONArray jSONArray) {
        File file = new File(this.f19833b, j11 + "-" + j12 + ".ctx");
        File file2 = new File(this.f19833b, j11 + "-" + j12 + ".allData");
        try {
            com.apm.insight.l.f.a(file, jSONObject);
            com.apm.insight.l.f.a(file2, jSONArray);
            this.f19837f = new a(file, (byte) 0);
        } catch (IOException e11) {
            com.apm.insight.c.a();
            j.a(e11, "NPTH_CATCH");
        }
    }

    private ArrayList<a> c(final String str) {
        File[] fileArrListFiles = this.f19833b.listFiles(new FilenameFilter() { // from class: com.apm.insight.runtime.o.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.endsWith(str) && Pattern.compile("^\\d{1,13}-\\d{1,13}.*").matcher(str2).matches();
            }
        });
        ArrayList<a> arrayList = new ArrayList<>();
        if (fileArrListFiles == null) {
            return arrayList;
        }
        com.apm.insight.a.a((Object) ("foundRuntimeContextFiles " + fileArrListFiles.length));
        byte b11 = 0;
        a aVar = null;
        for (File file : fileArrListFiles) {
            try {
                a aVar2 = new a(file, b11);
                arrayList.add(aVar2);
                if (this.f19837f == null && ".ctx".equals(str) && (aVar == null || aVar2.f19841b >= aVar.f19841b)) {
                    aVar = aVar2;
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
        if (this.f19837f == null && aVar != null) {
            this.f19837f = aVar;
        }
        return arrayList;
    }

    @Nullable
    public final JSONObject a(long j11) {
        JSONObject jSONObject;
        File file;
        boolean z10;
        String strA;
        Iterator<a> it = c(".ctx").iterator();
        while (true) {
            jSONObject = null;
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j11 >= next.f19840a && j11 <= next.f19841b) {
                file = next.f19842c;
                break;
            }
        }
        if (file == null) {
            a aVar = null;
            for (a aVar2 : c(".ctx")) {
                if (aVar == null || Math.abs(aVar.f19841b - j11) > Math.abs(aVar2.f19841b - j11)) {
                    aVar = aVar2;
                }
            }
            file = aVar == null ? null : aVar.f19842c;
            z10 = true;
        } else {
            z10 = false;
        }
        if (file != null) {
            try {
                strA = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
                try {
                    jSONObject = new JSONObject(strA);
                } catch (Throwable th2) {
                    th = th2;
                    com.apm.insight.c.a();
                    j.a(new IOException("content :".concat(String.valueOf(strA)), th), "NPTH_CATCH");
                }
            } catch (Throwable th3) {
                th = th3;
                strA = null;
            }
        }
        if (jSONObject != null && z10) {
            try {
                jSONObject.put("unauthentic_version", 1);
            } catch (JSONException e11) {
                com.apm.insight.c.a();
                j.a(e11, "NPTH_CATCH");
            }
        }
        return jSONObject;
    }

    protected final void a(String str) {
        try {
            com.apm.insight.l.f.a(this.f19834c, str, false);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    public final void a(Map<String, Object> map, JSONArray jSONArray) {
        char c11;
        JSONObject jSONObjectA = Header.a(this.f19836e).a(map);
        if (Header.c(jSONObjectA)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f19837f == null) {
            c(".ctx");
        }
        a aVar = this.f19837f;
        if (aVar == null) {
            a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
            return;
        }
        JSONObject jSONObjectA2 = aVar.a();
        if (Header.c(jSONObjectA2)) {
            c11 = 2;
        } else if (Header.c(jSONObjectA)) {
            c11 = 0;
        } else if (String.valueOf(jSONObjectA.opt("update_version_code")).equals(String.valueOf(jSONObjectA2.opt("update_version_code"))) && Header.d(jSONObjectA2)) {
            c11 = 1;
        } else {
            c11 = 2;
        }
        if (c11 == 1) {
            a(aVar.f19840a, jCurrentTimeMillis, jSONObjectA, jSONArray);
            com.apm.insight.l.f.a(aVar.f19842c);
        } else if (c11 == 2) {
            a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
        }
        try {
            ArrayList<a> arrayListC = c("");
            if (arrayListC.size() <= 6) {
                return;
            }
            for (a aVar2 : arrayListC) {
                if (a.a(aVar2, jCurrentTimeMillis)) {
                    a.d(aVar2);
                }
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }

    protected final String b() {
        try {
            return com.apm.insight.l.f.a(this.f19834c.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return "0";
        }
    }

    @Nullable
    public final JSONArray b(long j11) {
        File file;
        String strA;
        Iterator<a> it = c(".allData").iterator();
        while (true) {
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j11 >= next.f19840a && j11 <= next.f19841b) {
                file = next.f19842c;
                break;
            }
        }
        if (file == null) {
            a aVar = null;
            for (a aVar2 : c(".allData")) {
                if (aVar == null || Math.abs(aVar.f19841b - j11) > Math.abs(aVar2.f19841b - j11)) {
                    aVar = aVar2;
                }
            }
            file = aVar == null ? null : aVar.f19842c;
        }
        if (file == null) {
            return null;
        }
        try {
            strA = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
            try {
                return new JSONArray(strA);
            } catch (Throwable th2) {
                th = th2;
                com.apm.insight.c.a();
                j.a(new IOException("content :".concat(String.valueOf(strA)), th), "NPTH_CATCH");
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            strA = null;
        }
    }

    public final void b(String str) {
        try {
            com.apm.insight.l.f.a(this.f19835d, str, false);
        } catch (Throwable unused) {
        }
    }

    public final String c() {
        try {
            return com.apm.insight.l.f.a(this.f19835d.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return null;
        }
    }
}
