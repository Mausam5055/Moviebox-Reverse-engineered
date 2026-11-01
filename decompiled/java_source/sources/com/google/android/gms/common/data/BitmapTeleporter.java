package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class(creator = "BitmapTeleporterCreator")
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();

    @SafeParcelable.VersionField(id = 1)
    final int zaa;

    @Nullable
    @SafeParcelable.Field(id = 2)
    ParcelFileDescriptor zab;

    @SafeParcelable.Field(id = 3)
    final int zac;

    @Nullable
    private Bitmap zad;
    private boolean zae;
    private File zaf;

    @SafeParcelable.Constructor
    BitmapTeleporter(@SafeParcelable.Param(id = 1) int i11, @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i12) {
        this.zaa = i11;
        this.zab = parcelFileDescriptor;
        this.zac = i12;
        this.zad = null;
        this.zae = false;
    }

    @KeepForSdk
    public BitmapTeleporter(@NonNull Bitmap bitmap) {
        this.zaa = 1;
        this.zab = null;
        this.zac = 0;
        this.zad = bitmap;
        this.zae = true;
    }

    private static final void zaa(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e11) {
            Log.w("BitmapTeleporter", "Could not close stream", e11);
        }
    }

    @Nullable
    @KeepForSdk
    public Bitmap get() {
        if (!this.zae) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int i11 = dataInputStream.readInt();
                    int i12 = dataInputStream.readInt();
                    Bitmap.Config configValueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zaa(dataInputStream);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i11, i12, configValueOf);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                    this.zad = bitmapCreateBitmap;
                    this.zae = true;
                } catch (IOException e11) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e11);
                }
            } catch (Throwable th2) {
                zaa(dataInputStream);
                throw th2;
            }
        }
        return this.zad;
    }

    @KeepForSdk
    public void release() {
        if (this.zae) {
            return;
        }
        try {
            ((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)).close();
        } catch (IOException e11) {
            Log.w("BitmapTeleporter", "Could not close PFD", e11);
        }
    }

    @KeepForSdk
    public void setTempDir(@NonNull File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.zaf = file;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i11) {
        if (this.zab == null) {
            Bitmap bitmap = (Bitmap) Preconditions.checkNotNull(this.zad);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byte[] bArrArray = byteBufferAllocate.array();
            File file = this.zaf;
            if (file == null) {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
            try {
                File fileCreateTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    this.zab = ParcelFileDescriptor.open(fileCreateTempFile, ASTNode.DEOP);
                    fileCreateTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(bArrArray.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(bArrArray);
                            zaa(dataOutputStream);
                        } catch (IOException e11) {
                            throw new IllegalStateException("Could not write into unlinked file", e11);
                        }
                    } catch (Throwable th2) {
                        zaa(dataOutputStream);
                        throw th2;
                    }
                } catch (FileNotFoundException unused) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e12) {
                throw new IllegalStateException("Could not create temporary file", e12);
            }
        }
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zab, i11 | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zac);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        this.zab = null;
    }
}
