package com.transsion.athena.anateh;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class aethna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ByteBuffer f42557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f42558b;

    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00af A[Catch: IOException -> 0x00ab, TRY_LEAVE, TryCatch #3 {IOException -> 0x00ab, blocks: (B:39:0x00a7, B:43:0x00af), top: B:87:0x00a7 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00d9 A[Catch: IOException -> 0x00d5, TRY_LEAVE, TryCatch #0 {IOException -> 0x00d5, blocks: (B:55:0x00d1, B:59:0x00d9), top: B:83:0x00d1 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00e6 A[Catch: IOException -> 0x00c0, TRY_ENTER, TRY_LEAVE, TryCatch #9 {IOException -> 0x00c0, blocks: (B:47:0x00bc, B:63:0x00e6), top: B:94:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x00fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x0100 A[Catch: IOException -> 0x00fc, TRY_LEAVE, TryCatch #12 {IOException -> 0x00fc, blocks: (B:70:0x00f8, B:74:0x0100), top: B:96:0x00f8 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public aethna(String str) throws Throwable {
        FileChannel channel;
        Throwable th2;
        RandomAccessFile randomAccessFile;
        Exception e11;
        FileChannel fileChannel;
        RandomAccessFile randomAccessFile2;
        FileLock fileLock;
        File file = new File(str);
        this.f42558b = file;
        if (!file.exists()) {
            try {
                if (this.f42558b.createNewFile()) {
                    com.transsion.athena.taaneh.aethna.c("EncryptFile created");
                }
            } catch (Exception e12) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e12));
            }
        }
        if (f42557a == null) {
            f42557a = ByteBuffer.allocate(32808);
        }
        FileLock fileLockLock = null;
        fileLockLock = null;
        fileLockLock = null;
        FileChannel fileChannel2 = null;
        fileLockLock = null;
        fileLockLock = null;
        fileLockLock = null;
        try {
            try {
                if (this.f42558b.length() < PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                    randomAccessFile = new RandomAccessFile(this.f42558b, "rw");
                    try {
                        channel = randomAccessFile.getChannel();
                        try {
                            fileLockLock = channel.lock();
                            f42557a.putInt(0, 0);
                            f42557a.putInt(4, ((Integer) com.transsion.athena.aethna.athena.c().i().first).intValue());
                            for (int i11 = 0; i11 < 8192; i11 += 4) {
                                f42557a.putInt((i11 + 10) * 4, i11);
                            }
                            randomAccessFile.seek(0L);
                            randomAccessFile.write(f42557a.array());
                        } catch (Exception e13) {
                            e11 = e13;
                            fileLock = fileLockLock;
                            fileChannel2 = channel;
                            fileChannel = fileChannel2;
                            fileLockLock = fileLock;
                            randomAccessFile2 = randomAccessFile;
                            try {
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                                if (fileLockLock != null) {
                                    try {
                                        fileLockLock.release();
                                        if (fileChannel != null) {
                                            fileChannel.close();
                                        }
                                    } catch (IOException e14) {
                                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e14));
                                        if (randomAccessFile2 == null) {
                                            randomAccessFile2.close();
                                        }
                                        return;
                                    }
                                } else if (fileChannel != null) {
                                    fileChannel.close();
                                }
                                if (randomAccessFile2 == null) {
                                    return;
                                } else {
                                    randomAccessFile2.close();
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                                RandomAccessFile randomAccessFile3 = randomAccessFile2;
                                channel = fileChannel;
                                randomAccessFile = randomAccessFile3;
                                if (fileLockLock != null) {
                                    try {
                                        fileLockLock.release();
                                        if (channel != null) {
                                            channel.close();
                                        }
                                    } catch (IOException e15) {
                                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e15));
                                        if (randomAccessFile == null) {
                                            throw th2;
                                        }
                                        try {
                                            randomAccessFile.close();
                                            throw th2;
                                        } catch (IOException e16) {
                                            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e16));
                                            throw th2;
                                        }
                                    }
                                } else if (channel != null) {
                                    channel.close();
                                }
                                if (randomAccessFile == null) {
                                    throw th2;
                                }
                                randomAccessFile.close();
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            th2 = th4;
                            if (fileLockLock != null) {
                                fileLockLock.release();
                                if (channel != null) {
                                    channel.close();
                                }
                            } else if (channel != null) {
                                channel.close();
                            }
                            if (randomAccessFile == null) {
                                throw th2;
                            }
                            randomAccessFile.close();
                            throw th2;
                        }
                    } catch (Exception e17) {
                        e11 = e17;
                        fileLock = null;
                    } catch (Throwable th5) {
                        th2 = th5;
                        channel = null;
                    }
                } else {
                    randomAccessFile = null;
                    channel = null;
                }
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                        if (channel != null) {
                            channel.close();
                        }
                    } catch (IOException e18) {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e18));
                    }
                } else if (channel != null) {
                    channel.close();
                }
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e19) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e19));
            }
        } catch (Exception e20) {
            e11 = e20;
            fileChannel = null;
            randomAccessFile2 = null;
        } catch (Throwable th6) {
            channel = null;
            th2 = th6;
            randomAccessFile = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0115 A[Catch: IOException -> 0x0111, TRY_LEAVE, TryCatch #3 {IOException -> 0x0111, blocks: (B:64:0x010d, B:68:0x0115), top: B:94:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0122 A[Catch: IOException -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #10 {IOException -> 0x00e1, blocks: (B:44:0x00dd, B:72:0x0122), top: B:105:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:82:0x013d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x013f A[Catch: IOException -> 0x013b, TRY_LEAVE, TryCatch #13 {IOException -> 0x013b, blocks: (B:79:0x0137, B:83:0x013f), top: B:108:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public String a() throws Throwable {
        FileChannel fileChannel;
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        FileLock fileLock2;
        byte[] bArr;
        StringBuilder sb2 = new StringBuilder();
        List<byte[]> listD = com.transsion.athena.aethna.athena.c().d();
        if (com.transsion.athena.config.data.model.anehat.a(listD)) {
            com.transsion.athena.taaneh.aethna.a("readBuffer passwords is empty");
            return "";
        }
        RandomAccessFile randomAccessFile2 = null;
        fileLockLock = null;
        FileLock fileLockLock = null;
        fileChannel = null;
        FileChannel fileChannel2 = null;
        FileChannel fileChannel3 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(this.f42558b, "rw");
                try {
                    channel = randomAccessFile.getChannel();
                    try {
                        try {
                            fileLockLock = channel.lock();
                            randomAccessFile.seek(0L);
                            randomAccessFile.read(f42557a.array(), 0, 32808);
                            byte[] bArr2 = listD.get(f42557a.getInt(4));
                            if (bArr2 != null) {
                                athena athenaVar = new athena(bArr2);
                                boolean z10 = true;
                                for (int i11 = 0; i11 < f42557a.getInt(0); i11++) {
                                    if (i11 == 0) {
                                        int i12 = f42557a.getInt((i11 + 10) * 4);
                                        bArr = new byte[i12];
                                        randomAccessFile.read(bArr, 0, i12);
                                    } else {
                                        int i13 = f42557a.getInt((i11 + 10) * 4) - f42557a.getInt((i11 + 9) * 4);
                                        bArr = new byte[i13];
                                        randomAccessFile.read(bArr, 0, i13);
                                    }
                                    String str = new String(athenaVar.a(bArr));
                                    try {
                                        try {
                                            JSONObject jSONObject = new JSONObject(str);
                                            if (jSONObject.has("tid") && jSONObject.has(NotificationCompat.CATEGORY_EVENT)) {
                                                if (!z10) {
                                                    sb2.append("\n");
                                                }
                                                sb2.append(str);
                                                z10 = false;
                                            }
                                        } catch (Exception e11) {
                                            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (fileLockLock != null) {
                                            try {
                                                fileLockLock.release();
                                                if (channel != null) {
                                                    channel.close();
                                                }
                                            } catch (IOException e12) {
                                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e12));
                                                if (randomAccessFile == null) {
                                                    throw th;
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                    throw th;
                                                } catch (IOException e13) {
                                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e13));
                                                    throw th;
                                                }
                                            }
                                        } else if (channel != null) {
                                            channel.close();
                                        }
                                        if (randomAccessFile == null) {
                                            throw th;
                                        }
                                        randomAccessFile.close();
                                        throw th;
                                    }
                                }
                            }
                            if (fileLockLock != null) {
                                try {
                                    fileLockLock.release();
                                } catch (IOException e14) {
                                    com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e14));
                                }
                            }
                            channel.close();
                            randomAccessFile.close();
                        } catch (Exception e15) {
                            e = e15;
                            fileLock = fileLockLock;
                            fileChannel3 = channel;
                            try {
                                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e));
                                if (this.f42558b.delete()) {
                                    com.transsion.athena.taaneh.aethna.c("file deleted");
                                }
                                if (fileLock != null) {
                                    try {
                                        fileLock.release();
                                        if (fileChannel3 != null) {
                                            fileChannel3.close();
                                        }
                                    } catch (IOException e16) {
                                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e16));
                                        if (randomAccessFile != null) {
                                            randomAccessFile.close();
                                        }
                                        return sb2.toString();
                                    }
                                } else if (fileChannel3 != null) {
                                    fileChannel3.close();
                                }
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                }
                                return sb2.toString();
                            } catch (Throwable th3) {
                                th = th3;
                                fileChannel = fileChannel3;
                                randomAccessFile2 = randomAccessFile;
                                randomAccessFile = randomAccessFile2;
                                fileLockLock = fileLock;
                                channel = fileChannel;
                                if (fileLockLock != null) {
                                    fileLockLock.release();
                                    if (channel != null) {
                                        channel.close();
                                    }
                                } else if (channel != null) {
                                    channel.close();
                                }
                                if (randomAccessFile == null) {
                                    throw th;
                                }
                                randomAccessFile.close();
                                throw th;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        fileLock2 = fileLockLock;
                        fileChannel2 = channel;
                        channel = fileChannel2;
                        fileLockLock = fileLock2;
                        if (fileLockLock != null) {
                            fileLockLock.release();
                            if (channel != null) {
                                channel.close();
                            }
                        } else if (channel != null) {
                            channel.close();
                        }
                        if (randomAccessFile == null) {
                            throw th;
                        }
                        randomAccessFile.close();
                        throw th;
                    }
                } catch (Exception e17) {
                    e = e17;
                    fileLock = null;
                } catch (Throwable th5) {
                    th = th5;
                    fileLock2 = null;
                }
            } catch (IOException e18) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e18));
            }
        } catch (Exception e19) {
            e = e19;
            randomAccessFile = null;
            fileLock = null;
        } catch (Throwable th6) {
            th = th6;
            fileChannel = null;
            fileLock = null;
            randomAccessFile = randomAccessFile2;
            fileLockLock = fileLock;
            channel = fileChannel;
            if (fileLockLock != null) {
                fileLockLock.release();
                if (channel != null) {
                    channel.close();
                }
            } else if (channel != null) {
                channel.close();
            }
            if (randomAccessFile == null) {
                throw th;
            }
            randomAccessFile.close();
            throw th;
        }
        return sb2.toString();
    }
}
