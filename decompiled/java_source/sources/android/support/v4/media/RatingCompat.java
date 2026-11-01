package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i11) {
            return new RatingCompat[i11];
        }
    }

    private static class b {
        static float a(Rating rating) {
            return rating.getPercentRating();
        }

        static int b(Rating rating) {
            return rating.getRatingStyle();
        }

        static float c(Rating rating) {
            return rating.getStarRating();
        }

        static boolean d(Rating rating) {
            return rating.hasHeart();
        }

        static boolean e(Rating rating) {
            return rating.isRated();
        }

        static boolean f(Rating rating) {
            return rating.isThumbUp();
        }

        static Rating g(boolean z10) {
            return Rating.newHeartRating(z10);
        }

        static Rating h(float f11) {
            return Rating.newPercentageRating(f11);
        }

        static Rating i(int i11, float f11) {
            return Rating.newStarRating(i11, f11);
        }

        static Rating j(boolean z10) {
            return Rating.newThumbRating(z10);
        }

        static Rating k(int i11) {
            return Rating.newUnratedRating(i11);
        }
    }

    RatingCompat(int i11, float f11) {
        this.mRatingStyle = i11;
        this.mRatingValue = f11;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompatNewUnratedRating = null;
        if (obj != null) {
            Rating rating = (Rating) obj;
            int iB = b.b(rating);
            if (b.e(rating)) {
                switch (iB) {
                    case 1:
                        ratingCompatNewUnratedRating = newHeartRating(b.d(rating));
                        break;
                    case 2:
                        ratingCompatNewUnratedRating = newThumbRating(b.f(rating));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatNewUnratedRating = newStarRating(iB, b.c(rating));
                        break;
                    case 6:
                        ratingCompatNewUnratedRating = newPercentageRating(b.a(rating));
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompatNewUnratedRating = newUnratedRating(iB);
            }
            ratingCompatNewUnratedRating.mRatingObj = obj;
        }
        return ratingCompatNewUnratedRating;
    }

    public static RatingCompat newHeartRating(boolean z10) {
        return new RatingCompat(1, z10 ? 1.0f : 0.0f);
    }

    public static RatingCompat newPercentageRating(float f11) {
        if (f11 >= 0.0f && f11 <= 100.0f) {
            return new RatingCompat(6, f11);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat newStarRating(int i11, float f11) {
        float f12;
        if (i11 == 3) {
            f12 = 3.0f;
        } else if (i11 == 4) {
            f12 = 4.0f;
        } else {
            if (i11 != 5) {
                Log.e(TAG, "Invalid rating style (" + i11 + ") for a star rating");
                return null;
            }
            f12 = 5.0f;
        }
        if (f11 >= 0.0f && f11 <= f12) {
            return new RatingCompat(i11, f11);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    public static RatingCompat newThumbRating(boolean z10) {
        return new RatingCompat(2, z10 ? 1.0f : 0.0f);
    }

    public static RatingCompat newUnratedRating(int i11) {
        switch (i11) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i11, -1.0f);
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        if (this.mRatingStyle == 6 && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public Object getRating() {
        if (this.mRatingObj == null) {
            if (isRated()) {
                int i11 = this.mRatingStyle;
                switch (i11) {
                    case 1:
                        this.mRatingObj = b.g(hasHeart());
                        break;
                    case 2:
                        this.mRatingObj = b.j(isThumbUp());
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.mRatingObj = b.i(i11, getStarRating());
                        break;
                    case 6:
                        this.mRatingObj = b.h(getPercentRating());
                        break;
                    default:
                        return null;
                }
            } else {
                this.mRatingObj = b.k(this.mRatingStyle);
            }
        }
        return this.mRatingObj;
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public float getStarRating() {
        int i11 = this.mRatingStyle;
        if ((i11 == 3 || i11 == 4 || i11 == 5) && isRated()) {
            return this.mRatingValue;
        }
        return -1.0f;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == 1 && this.mRatingValue == 1.0f;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == 2 && this.mRatingValue == 1.0f;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Rating:style=");
        sb2.append(this.mRatingStyle);
        sb2.append(" rating=");
        float f11 = this.mRatingValue;
        sb2.append(f11 < 0.0f ? "unrated" : String.valueOf(f11));
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }
}
