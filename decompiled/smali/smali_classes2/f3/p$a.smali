.class public final Lf3/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:I

.field public final c:[B

.field public final d:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/p$a;->a:Ljava/util/UUID;

    iput p2, p0, Lf3/p$a;->b:I

    iput-object p3, p0, Lf3/p$a;->c:[B

    iput-object p4, p0, Lf3/p$a;->d:[Ljava/util/UUID;

    return-void
.end method
