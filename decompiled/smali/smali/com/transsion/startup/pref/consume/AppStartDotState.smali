.class public final Lcom/transsion/startup/pref/consume/AppStartDotState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/consume/AppStartDotState$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J$\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J\u0010\u0010\u0018\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J\u001a\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010 \u001a\u0004\u0008!\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/startup/pref/consume/AppStartDotState;",
        "Landroid/os/Parcelable;",
        "",
        "state",
        "",
        "timestamp",
        "<init>",
        "(Ljava/lang/String;J)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "()J",
        "copy",
        "(Ljava/lang/String;J)Lcom/transsion/startup/pref/consume/AppStartDotState;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getState",
        "J",
        "getTimestamp",
        "Companion",
        "a",
        "Startup_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_END:Ljava/lang/String; = "ad_end"

.field public static final AD_LOADING:Ljava/lang/String; = "ad_loading"

.field public static final AD_RENDERING:Ljava/lang/String; = "ad_rendering"

.field public static final APP_END:Ljava/lang/String; = "app_end"

.field public static final APP_START:Ljava/lang/String; = "app_start"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/startup/pref/consume/AppStartDotState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/startup/pref/consume/AppStartDotState$a;

.field public static final MAIN_CREATE:Ljava/lang/String; = "main_create"

.field public static final SPLASH_RESUME:Ljava/lang/String; = "splash_resume"

.field public static final SPLASH_START:Ljava/lang/String; = "splash_start"

.field public static final TRENDING_CREATE:Ljava/lang/String; = "trending_create"

.field public static final TRENDING_END:Ljava/lang/String; = "trending_end"

.field public static final TRENDING_RENDER:Ljava/lang/String; = "trending_render"


# instance fields
.field private final state:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotState$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/startup/pref/consume/AppStartDotState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartDotState;->Companion:Lcom/transsion/startup/pref/consume/AppStartDotState$a;

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotState$b;

    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/AppStartDotState$b;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartDotState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    iput-wide p2, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/startup/pref/consume/AppStartDotState;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/startup/pref/consume/AppStartDotState;Ljava/lang/String;JILjava/lang/Object;)Lcom/transsion/startup/pref/consume/AppStartDotState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/startup/pref/consume/AppStartDotState;->copy(Ljava/lang/String;J)Lcom/transsion/startup/pref/consume/AppStartDotState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/transsion/startup/pref/consume/AppStartDotState;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotState;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/startup/pref/consume/AppStartDotState;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/startup/pref/consume/AppStartDotState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/startup/pref/consume/AppStartDotState;

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStartDotState(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotState;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
