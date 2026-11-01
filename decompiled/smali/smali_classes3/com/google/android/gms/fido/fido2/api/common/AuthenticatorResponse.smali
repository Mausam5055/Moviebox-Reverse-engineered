.class public abstract Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientDataJSON()[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract serializeToBytes()[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
