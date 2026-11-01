package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: android.support.v4.media.session.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0014a extends Binder implements a {

        /* JADX INFO: renamed from: android.support.v4.media.session.a$a$a, reason: collision with other inner class name */
        private static class C0015a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f831a;

            C0015a(IBinder iBinder) {
                this.f831a = iBinder;
            }

            @Override // android.support.v4.media.session.a
            public void H() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f831a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void J(MediaMetadataCompat mediaMetadataCompat) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    b.d(parcelObtain, mediaMetadataCompat, 0);
                    this.f831a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void X0(PlaybackStateCompat playbackStateCompat) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    b.d(parcelObtain, playbackStateCompat, 0);
                    this.f831a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f831a;
            }
        }

        public AbstractBinderC0014a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0015a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
            }
            if (i11 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            switch (i11) {
                case 1:
                    c(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 2:
                    H();
                    return true;
                case 3:
                    X0((PlaybackStateCompat) b.c(parcel, PlaybackStateCompat.CREATOR));
                    return true;
                case 4:
                    J((MediaMetadataCompat) b.c(parcel, MediaMetadataCompat.CREATOR));
                    return true;
                case 5:
                    p(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    return true;
                case 6:
                    z0((CharSequence) b.c(parcel, TextUtils.CHAR_SEQUENCE_CREATOR));
                    return true;
                case 7:
                    o0((Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 8:
                    d0((ParcelableVolumeInfo) b.c(parcel, ParcelableVolumeInfo.CREATOR));
                    return true;
                case 9:
                    onRepeatModeChanged(parcel.readInt());
                    return true;
                case 10:
                    y0(parcel.readInt() != 0);
                    return true;
                case 11:
                    v0(parcel.readInt() != 0);
                    return true;
                case 12:
                    Q(parcel.readInt());
                    return true;
                case 13:
                    o();
                    return true;
                default:
                    return super.onTransact(i11, parcel, parcel2, i12);
            }
        }
    }

    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(Parcel parcel, Parcelable parcelable, int i11) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i11);
            }
        }
    }

    void H();

    void J(MediaMetadataCompat mediaMetadataCompat);

    void Q(int i11);

    void X0(PlaybackStateCompat playbackStateCompat);

    void c(String str, Bundle bundle);

    void d0(ParcelableVolumeInfo parcelableVolumeInfo);

    void o();

    void o0(Bundle bundle);

    void onRepeatModeChanged(int i11);

    void p(List list);

    void v0(boolean z10);

    void y0(boolean z10);

    void z0(CharSequence charSequence);
}
