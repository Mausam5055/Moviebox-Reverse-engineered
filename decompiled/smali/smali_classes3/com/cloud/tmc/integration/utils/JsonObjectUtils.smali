.class public Lcom/cloud/tmc/integration/utils/JsonObjectUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;
    .locals 1
    .param p0    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;-><init>(Lcom/google/gson/JsonObject;)V

    return-object v0
.end method
