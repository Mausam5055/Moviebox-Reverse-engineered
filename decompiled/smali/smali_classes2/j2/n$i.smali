.class abstract Lj2/n$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/n$i$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/f0;

.field public final c:I

.field public final d:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/f0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj2/n$i;->a:I

    iput-object p2, p0, Lj2/n$i;->b:Landroidx/media3/common/f0;

    iput p3, p0, Lj2/n$i;->c:I

    invoke-virtual {p2, p3}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p0, Lj2/n$i;->d:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lj2/n$i;)Z
.end method
