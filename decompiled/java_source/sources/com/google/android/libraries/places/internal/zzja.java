package com.google.android.libraries.places.internal;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class zzja {

    @Nullable
    private zza[] addressComponents;

    @Nullable
    private String businessStatus;

    @Nullable
    private Boolean curbsidePickup;

    @Nullable
    private zzd currentOpeningHours;

    @Nullable
    private Boolean delivery;

    @Nullable
    private Boolean dineIn;

    @Nullable
    private zzb editorialSummary;

    @Nullable
    private String formattedAddress;

    @Nullable
    private zzc geometry;

    @Nullable
    private String icon;

    @Nullable
    private String iconBackgroundColor;

    @Nullable
    private String iconMaskBaseUri;

    @Nullable
    private String internationalPhoneNumber;

    @Nullable
    private String name;

    @Nullable
    private zzd openingHours;

    @Nullable
    private zze[] photos;

    @Nullable
    private String placeId;

    @Nullable
    private zzf plusCode;

    @Nullable
    private Integer priceLevel;

    @Nullable
    private Double rating;

    @Nullable
    private Boolean reservable;

    @Nullable
    private zzd[] secondaryOpeningHours;

    @Nullable
    private Boolean servesBeer;

    @Nullable
    private Boolean servesBreakfast;

    @Nullable
    private Boolean servesBrunch;

    @Nullable
    private Boolean servesDinner;

    @Nullable
    private Boolean servesLunch;

    @Nullable
    private Boolean servesVegetarianFood;

    @Nullable
    private Boolean servesWine;

    @Nullable
    private Boolean takeout;

    @Nullable
    private String[] types;

    @Nullable
    private Integer userRatingsTotal;

    @Nullable
    private Integer utcOffset;

    @Nullable
    private String website;

    @Nullable
    private Boolean wheelchairAccessibleEntrance;

    class zza {

        @Nullable
        private String longName;

        @Nullable
        private String shortName;

        @Nullable
        private String[] types;

        zza() {
        }

        final zznx zza() {
            String[] strArr = this.types;
            return strArr != null ? zznx.zzk(strArr) : zznx.zzl();
        }

        @Nullable
        final String zzb() {
            return this.longName;
        }

        @Nullable
        final String zzc() {
            return this.shortName;
        }
    }

    class zzb {

        @Nullable
        private String language;

        @Nullable
        private String overview;

        zzb() {
        }

        @Nullable
        final String zza() {
            return this.language;
        }

        @Nullable
        final String zzb() {
            return this.overview;
        }
    }

    class zzc {

        @Nullable
        private zza location;

        @Nullable
        private zzb viewport;

        class zza {

            @Nullable
            private Double lat;

            @Nullable
            private Double lng;

            zza() {
            }

            @Nullable
            final Double zza() {
                return this.lat;
            }

            @Nullable
            final Double zzb() {
                return this.lng;
            }
        }

        class zzb {

            @Nullable
            private zza northeast;

            @Nullable
            private zza southwest;

            zzb() {
            }

            @Nullable
            final zza zza() {
                return this.northeast;
            }

            @Nullable
            final zza zzb() {
                return this.southwest;
            }
        }

        zzc() {
        }

        @Nullable
        final zza zza() {
            return this.location;
        }

        @Nullable
        final zzb zzb() {
            return this.viewport;
        }
    }

    class zzd {

        @Nullable
        private zza[] periods;

        @Nullable
        private zzb[] specialDays;

        @Nullable
        private String type;

        @Nullable
        private String[] weekdayText;

        class zza {

            @Nullable
            private zzc close;

            @Nullable
            private zzc open;

            zza() {
            }

            @Nullable
            final zzc zza() {
                return this.close;
            }

            @Nullable
            final zzc zzb() {
                return this.open;
            }
        }

        class zzb {

            @Nullable
            private String date;

            @Nullable
            private Boolean exceptionalHours;

            zzb() {
            }

            @Nullable
            final Boolean zza() {
                return this.exceptionalHours;
            }

            @Nullable
            final String zzb() {
                return this.date;
            }
        }

        class zzc {

            @Nullable
            private String date;

            @Nullable
            private Integer day;

            @Nullable
            private String time;

            @Nullable
            private Boolean truncated;

            zzc() {
            }

            @Nullable
            final Boolean zza() {
                return this.truncated;
            }

            @Nullable
            final Integer zzb() {
                return this.day;
            }

            @Nullable
            final String zzc() {
                return this.date;
            }

            @Nullable
            final String zzd() {
                return this.time;
            }
        }

        zzd() {
        }

        final zznx zza() {
            zza[] zzaVarArr = this.periods;
            return zzaVarArr != null ? zznx.zzk(zzaVarArr) : zznx.zzl();
        }

        final zznx zzb() {
            zzb[] zzbVarArr = this.specialDays;
            return zzbVarArr != null ? zznx.zzk(zzbVarArr) : zznx.zzl();
        }

        final zznx zzc() {
            String[] strArr = this.weekdayText;
            return strArr != null ? zznx.zzk(strArr) : zznx.zzl();
        }

        @Nullable
        final String zzd() {
            return this.type;
        }
    }

    class zze {

        @Nullable
        private Integer height;

        @Nullable
        private String[] htmlAttributions;

        @Nullable
        private String photoReference;

        @Nullable
        private Integer width;

        zze() {
        }

        final zznx zza() {
            String[] strArr = this.htmlAttributions;
            return strArr != null ? zznx.zzk(strArr) : zznx.zzl();
        }

        @Nullable
        final Integer zzb() {
            return this.height;
        }

        @Nullable
        final Integer zzc() {
            return this.width;
        }

        @Nullable
        final String zzd() {
            return this.photoReference;
        }
    }

    class zzf {

        @Nullable
        private String compoundCode;

        @Nullable
        private String globalCode;

        zzf() {
        }

        @Nullable
        final String zza() {
            return this.compoundCode;
        }

        @Nullable
        final String zzb() {
            return this.globalCode;
        }
    }

    zzja() {
    }

    @Nullable
    final String zzA() {
        return this.formattedAddress;
    }

    @Nullable
    final String zzB() {
        return this.iconBackgroundColor;
    }

    @Nullable
    final String zzC() {
        return this.iconMaskBaseUri;
    }

    @Nullable
    final String zzD() {
        return this.internationalPhoneNumber;
    }

    @Nullable
    final String zzE() {
        return this.name;
    }

    @Nullable
    final String zzF() {
        return this.placeId;
    }

    @Nullable
    final String zzG() {
        return this.website;
    }

    @Nullable
    final zzb zza() {
        return this.editorialSummary;
    }

    @Nullable
    final zzc zzb() {
        return this.geometry;
    }

    @Nullable
    final zzd zzc() {
        return this.currentOpeningHours;
    }

    @Nullable
    final zzd zzd() {
        return this.openingHours;
    }

    @Nullable
    final zzf zze() {
        return this.plusCode;
    }

    final zznx zzf() {
        zza[] zzaVarArr = this.addressComponents;
        return zzaVarArr != null ? zznx.zzk(zzaVarArr) : zznx.zzl();
    }

    final zznx zzg() {
        zze[] zzeVarArr = this.photos;
        return zzeVarArr != null ? zznx.zzk(zzeVarArr) : zznx.zzl();
    }

    final zznx zzh() {
        zzd[] zzdVarArr = this.secondaryOpeningHours;
        return zzdVarArr != null ? zznx.zzk(zzdVarArr) : zznx.zzl();
    }

    final zznx zzi() {
        String[] strArr = this.types;
        return strArr != null ? zznx.zzk(strArr) : zznx.zzl();
    }

    @Nullable
    final Boolean zzj() {
        return this.curbsidePickup;
    }

    @Nullable
    final Boolean zzk() {
        return this.delivery;
    }

    @Nullable
    final Boolean zzl() {
        return this.dineIn;
    }

    @Nullable
    final Boolean zzm() {
        return this.reservable;
    }

    @Nullable
    final Boolean zzn() {
        return this.servesBeer;
    }

    @Nullable
    final Boolean zzo() {
        return this.servesBreakfast;
    }

    @Nullable
    final Boolean zzp() {
        return this.servesDinner;
    }

    @Nullable
    final Boolean zzq() {
        return this.servesLunch;
    }

    @Nullable
    final Boolean zzr() {
        return this.servesVegetarianFood;
    }

    @Nullable
    final Boolean zzs() {
        return this.servesWine;
    }

    @Nullable
    final Boolean zzt() {
        return this.takeout;
    }

    @Nullable
    final Boolean zzu() {
        return this.wheelchairAccessibleEntrance;
    }

    @Nullable
    final Double zzv() {
        return this.rating;
    }

    @Nullable
    final Integer zzw() {
        return this.priceLevel;
    }

    @Nullable
    final Integer zzx() {
        return this.userRatingsTotal;
    }

    @Nullable
    final Integer zzy() {
        return this.utcOffset;
    }

    @Nullable
    final String zzz() {
        return this.businessStatus;
    }
}
