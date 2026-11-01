.class final Lk3/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk3/a$b;->a:I

    iput p2, p0, Lk3/a$b;->b:I

    iput p3, p0, Lk3/a$b;->c:I

    iput p4, p0, Lk3/a$b;->d:I

    iput p5, p0, Lk3/a$b;->e:I

    iput p6, p0, Lk3/a$b;->f:I

    return-void
.end method
