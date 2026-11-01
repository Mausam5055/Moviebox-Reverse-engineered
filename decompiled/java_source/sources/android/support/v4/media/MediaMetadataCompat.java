package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
    static final androidx.collection.a METADATA_KEYS_TYPE;
    public static final String METADATA_KEY_ADVERTISEMENT = "android.media.metadata.ADVERTISEMENT";
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_BT_FOLDER_TYPE = "android.media.metadata.BT_FOLDER_TYPE";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DOWNLOAD_STATUS = "android.media.metadata.DOWNLOAD_STATUS";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    static final int METADATA_TYPE_BITMAP = 2;
    static final int METADATA_TYPE_LONG = 0;
    static final int METADATA_TYPE_RATING = 3;
    static final int METADATA_TYPE_TEXT = 1;
    private static final String[] PREFERRED_BITMAP_ORDER;
    private static final String[] PREFERRED_DESCRIPTION_ORDER;
    private static final String[] PREFERRED_URI_ORDER;
    private static final String TAG = "MediaMetadata";
    final Bundle mBundle;
    private MediaDescriptionCompat mDescription;
    private MediaMetadata mMetadataFwk;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaMetadataCompat[] newArray(int i11) {
            return new MediaMetadataCompat[i11];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Bundle f768a = new Bundle();

        public MediaMetadataCompat a() {
            return new MediaMetadataCompat(this.f768a);
        }

        public b b(String str, long j11) {
            androidx.collection.a aVar = MediaMetadataCompat.METADATA_KEYS_TYPE;
            if (!aVar.containsKey(str) || ((Integer) aVar.get(str)).intValue() == 0) {
                this.f768a.putLong(str, j11);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        public b c(String str, String str2) {
            androidx.collection.a aVar = MediaMetadataCompat.METADATA_KEYS_TYPE;
            if (!aVar.containsKey(str) || ((Integer) aVar.get(str)).intValue() == 1) {
                this.f768a.putCharSequence(str, str2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }
    }

    static {
        androidx.collection.a aVar = new androidx.collection.a();
        METADATA_KEYS_TYPE = aVar;
        aVar.put(METADATA_KEY_TITLE, 1);
        aVar.put(METADATA_KEY_ARTIST, 1);
        aVar.put(METADATA_KEY_DURATION, 0);
        aVar.put(METADATA_KEY_ALBUM, 1);
        aVar.put(METADATA_KEY_AUTHOR, 1);
        aVar.put(METADATA_KEY_WRITER, 1);
        aVar.put(METADATA_KEY_COMPOSER, 1);
        aVar.put(METADATA_KEY_COMPILATION, 1);
        aVar.put(METADATA_KEY_DATE, 1);
        aVar.put(METADATA_KEY_YEAR, 0);
        aVar.put(METADATA_KEY_GENRE, 1);
        aVar.put(METADATA_KEY_TRACK_NUMBER, 0);
        aVar.put(METADATA_KEY_NUM_TRACKS, 0);
        aVar.put(METADATA_KEY_DISC_NUMBER, 0);
        aVar.put(METADATA_KEY_ALBUM_ARTIST, 1);
        aVar.put(METADATA_KEY_ART, 2);
        aVar.put(METADATA_KEY_ART_URI, 1);
        aVar.put(METADATA_KEY_ALBUM_ART, 2);
        aVar.put(METADATA_KEY_ALBUM_ART_URI, 1);
        aVar.put(METADATA_KEY_USER_RATING, 3);
        aVar.put(METADATA_KEY_RATING, 3);
        aVar.put(METADATA_KEY_DISPLAY_TITLE, 1);
        aVar.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        aVar.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        aVar.put(METADATA_KEY_DISPLAY_ICON, 2);
        aVar.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        aVar.put(METADATA_KEY_MEDIA_ID, 1);
        aVar.put(METADATA_KEY_BT_FOLDER_TYPE, 0);
        aVar.put(METADATA_KEY_MEDIA_URI, 1);
        aVar.put(METADATA_KEY_ADVERTISEMENT, 0);
        aVar.put(METADATA_KEY_DOWNLOAD_STATUS, 0);
        PREFERRED_DESCRIPTION_ORDER = new String[]{METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
        PREFERRED_BITMAP_ORDER = new String[]{METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
        PREFERRED_URI_ORDER = new String[]{METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, METADATA_KEY_ALBUM_ART_URI};
        CREATOR = new a();
    }

    MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.mBundle = bundle2;
        MediaSessionCompat.a(bundle2);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.mBundle = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        mediaMetadata.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        mediaMetadataCompatCreateFromParcel.mMetadataFwk = mediaMetadata;
        return mediaMetadataCompatCreateFromParcel;
    }

    public boolean containsKey(String str) {
        return this.mBundle.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bitmap getBitmap(String str) {
        try {
            return (Bitmap) this.mBundle.getParcelable(str);
        } catch (Exception e11) {
            Log.w(TAG, "Failed to retrieve a key as Bitmap.", e11);
            return null;
        }
    }

    public Bundle getBundle() {
        return new Bundle(this.mBundle);
    }

    public MediaDescriptionCompat getDescription() {
        Bitmap bitmap;
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        String string = getString(METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(METADATA_KEY_DISPLAY_TITLE);
        if (TextUtils.isEmpty(text)) {
            int i11 = 0;
            int i12 = 0;
            while (i11 < 3) {
                String[] strArr = PREFERRED_DESCRIPTION_ORDER;
                if (i12 >= strArr.length) {
                    break;
                }
                int i13 = i12 + 1;
                CharSequence text2 = getText(strArr[i12]);
                if (!TextUtils.isEmpty(text2)) {
                    charSequenceArr[i11] = text2;
                    i11++;
                }
                i12 = i13;
            }
        } else {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(METADATA_KEY_DISPLAY_DESCRIPTION);
        }
        int i14 = 0;
        while (true) {
            String[] strArr2 = PREFERRED_BITMAP_ORDER;
            if (i14 >= strArr2.length) {
                bitmap = null;
                break;
            }
            bitmap = getBitmap(strArr2[i14]);
            if (bitmap != null) {
                break;
            }
            i14++;
        }
        int i15 = 0;
        while (true) {
            String[] strArr3 = PREFERRED_URI_ORDER;
            if (i15 >= strArr3.length) {
                uri = null;
                break;
            }
            String string2 = getString(strArr3[i15]);
            if (!TextUtils.isEmpty(string2)) {
                uri = Uri.parse(string2);
                break;
            }
            i15++;
        }
        String string3 = getString(METADATA_KEY_MEDIA_URI);
        Uri uri2 = TextUtils.isEmpty(string3) ? null : Uri.parse(string3);
        MediaDescriptionCompat.d dVar = new MediaDescriptionCompat.d();
        dVar.f(string);
        dVar.i(charSequenceArr[0]);
        dVar.h(charSequenceArr[1]);
        dVar.b(charSequenceArr[2]);
        dVar.d(bitmap);
        dVar.e(uri);
        dVar.g(uri2);
        Bundle bundle = new Bundle();
        if (this.mBundle.containsKey(METADATA_KEY_BT_FOLDER_TYPE)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE, getLong(METADATA_KEY_BT_FOLDER_TYPE));
        }
        if (this.mBundle.containsKey(METADATA_KEY_DOWNLOAD_STATUS)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_DOWNLOAD_STATUS, getLong(METADATA_KEY_DOWNLOAD_STATUS));
        }
        if (!bundle.isEmpty()) {
            dVar.c(bundle);
        }
        MediaDescriptionCompat mediaDescriptionCompatA = dVar.a();
        this.mDescription = mediaDescriptionCompatA;
        return mediaDescriptionCompatA;
    }

    public long getLong(String str) {
        return this.mBundle.getLong(str, 0L);
    }

    public Object getMediaMetadata() {
        if (this.mMetadataFwk == null) {
            Parcel parcelObtain = Parcel.obtain();
            writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            this.mMetadataFwk = (MediaMetadata) MediaMetadata.CREATOR.createFromParcel(parcelObtain);
            parcelObtain.recycle();
        }
        return this.mMetadataFwk;
    }

    public RatingCompat getRating(String str) {
        try {
            return RatingCompat.fromRating(this.mBundle.getParcelable(str));
        } catch (Exception e11) {
            Log.w(TAG, "Failed to retrieve a key as Rating.", e11);
            return null;
        }
    }

    public String getString(String str) {
        CharSequence charSequence = this.mBundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public CharSequence getText(String str) {
        return this.mBundle.getCharSequence(str);
    }

    public Set<String> keySet() {
        return this.mBundle.keySet();
    }

    public int size() {
        return this.mBundle.size();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeBundle(this.mBundle);
    }
}
