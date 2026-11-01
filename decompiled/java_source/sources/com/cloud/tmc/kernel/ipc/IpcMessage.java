package com.cloud.tmc.kernel.ipc;

import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public class IpcMessage implements Parcelable {
    public static final Parcelable.Creator<IpcMessage> CREATOR = new Parcelable.Creator<IpcMessage>() { // from class: com.cloud.tmc.kernel.ipc.IpcMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpcMessage createFromParcel(Parcel parcel) {
            return new IpcMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpcMessage[] newArray(int i11) {
            return new IpcMessage[i11];
        }
    };
    public String biz;
    public Message bizMsg;
    public String clientId;
    public int lpid;
    public int pid;

    public IpcMessage() {
    }

    protected IpcMessage(Parcel parcel) {
        this.pid = parcel.readInt();
        this.lpid = parcel.readInt();
        this.clientId = parcel.readString();
        this.biz = parcel.readString();
        this.bizMsg = (Message) parcel.readParcelable(Message.class.getClassLoader());
    }

    public static byte[] marshall(IpcMessage ipcMessage) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeValue(ipcMessage);
            return parcelObtain.marshall();
        } catch (Exception e11) {
            TmcLogger.e(TmcConstants.TAG, "IpcMsg marshall error " + Log.getStackTraceString(e11));
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    public static IpcMessage unmarshall(byte[] bArr) {
        IpcMessage ipcMessage = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                parcelObtain.unmarshall(bArr, 0, bArr.length);
                parcelObtain.setDataPosition(0);
                IpcMessage ipcMessage2 = (IpcMessage) parcelObtain.readValue(IpcMessage.class.getClassLoader());
                parcelObtain.recycle();
                ipcMessage = ipcMessage2;
            } catch (Exception e11) {
                TmcLogger.e(TmcConstants.TAG, "IpcMsg unmarshall error " + Log.getStackTraceString(e11));
                parcelObtain.recycle();
            }
            return ipcMessage;
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.pid);
        parcel.writeInt(this.lpid);
        parcel.writeString(this.clientId);
        parcel.writeString(this.biz);
        parcel.writeParcelable(this.bizMsg, i11);
    }
}
