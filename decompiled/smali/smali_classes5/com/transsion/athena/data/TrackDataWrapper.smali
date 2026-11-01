.class public Lcom/transsion/athena/data/TrackDataWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/athena/data/TrackDataWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/transsion/athena/data/TrackData;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/athena/data/TrackDataWrapper$athena;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackDataWrapper$athena;-><init>()V

    sput-object v0, Lcom/transsion/athena/data/TrackDataWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    const-class v0, Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/TrackData;

    iput-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    iput-wide p3, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    return-wide v0
.end method

.method public c()Lcom/transsion/athena/data/TrackData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->b:Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/transsion/athena/data/TrackDataWrapper;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
