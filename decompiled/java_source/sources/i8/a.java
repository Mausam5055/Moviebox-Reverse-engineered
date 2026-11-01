package i8;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

/* JADX INFO: loaded from: classes4.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f65031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f65032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BufferedWriter f65033c;

    @Override // i8.b
    public void a(String str) {
        try {
            this.f65033c.write(str);
            this.f65033c.newLine();
            this.f65033c.flush();
        } catch (Exception e11) {
            b8.b.e().g("append log failed: " + e11.getMessage());
        }
    }

    @Override // i8.b
    public boolean b() {
        BufferedWriter bufferedWriter = this.f65033c;
        if (bufferedWriter != null) {
            try {
                bufferedWriter.close();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        this.f65033c = null;
        this.f65031a = null;
        this.f65032b = null;
        return true;
    }

    @Override // i8.b
    public File c() {
        return this.f65032b;
    }

    @Override // i8.b
    public String d() {
        return this.f65031a;
    }

    @Override // i8.b
    public boolean e() {
        return this.f65033c != null && this.f65032b.exists();
    }

    @Override // i8.b
    public boolean f(File file) {
        boolean z10;
        this.f65031a = file.getName();
        this.f65032b = file;
        if (file.exists()) {
            z10 = false;
        } else {
            try {
                File parentFile = this.f65032b.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.f65032b.createNewFile();
                z10 = true;
            } catch (Exception e11) {
                e11.printStackTrace();
                b();
                return false;
            }
        }
        try {
            this.f65033c = new BufferedWriter(new FileWriter(this.f65032b, true));
            if (z10) {
                g(this.f65032b);
            }
            return true;
        } catch (Exception e12) {
            e12.printStackTrace();
            b();
            return false;
        }
    }

    public void g(File file) {
    }
}
