package com.mbridge.msdk.playercommon.exoplayer2.offline;

import com.mbridge.msdk.playercommon.exoplayer2.util.AtomicFile;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class ActionFile {
    static final int VERSION = 0;
    private final File actionFile;
    private final AtomicFile atomicFile;

    public ActionFile(File file) {
        this.actionFile = file;
        this.atomicFile = new AtomicFile(file);
    }

    public DownloadAction[] load(DownloadAction.Deserializer... deserializerArr) throws IOException {
        if (!this.actionFile.exists()) {
            return new DownloadAction[0];
        }
        try {
            InputStream inputStreamOpenRead = this.atomicFile.openRead();
            DataInputStream dataInputStream = new DataInputStream(inputStreamOpenRead);
            int i11 = dataInputStream.readInt();
            if (i11 > 0) {
                throw new IOException("Unsupported action file version: " + i11);
            }
            int i12 = dataInputStream.readInt();
            DownloadAction[] downloadActionArr = new DownloadAction[i12];
            for (int i13 = 0; i13 < i12; i13++) {
                downloadActionArr[i13] = DownloadAction.deserializeFromStream(deserializerArr, dataInputStream);
            }
            Util.closeQuietly(inputStreamOpenRead);
            return downloadActionArr;
        } catch (Throwable th2) {
            Util.closeQuietly((Closeable) null);
            throw th2;
        }
    }

    public void store(DownloadAction... downloadActionArr) throws Throwable {
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(this.atomicFile.startWrite());
            try {
                dataOutputStream2.writeInt(0);
                dataOutputStream2.writeInt(downloadActionArr.length);
                for (DownloadAction downloadAction : downloadActionArr) {
                    DownloadAction.serializeToStream(downloadAction, dataOutputStream2);
                }
                this.atomicFile.endWrite(dataOutputStream2);
                Util.closeQuietly((Closeable) null);
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = dataOutputStream2;
                Util.closeQuietly(dataOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
