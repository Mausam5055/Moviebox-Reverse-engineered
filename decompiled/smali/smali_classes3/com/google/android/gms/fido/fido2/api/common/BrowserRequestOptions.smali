.class public abstract Lcom/google/android/gms/fido/fido2/api/common/BrowserRequestOptions;
.super Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientDataHash()[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getOrigin()Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
