.class public final Lg9/h0$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg9/h0$c;->a:Z

    iput p2, p0, Lg9/h0$c;->b:I

    iput p3, p0, Lg9/h0$c;->c:I

    iput p4, p0, Lg9/h0$c;->d:I

    return-void
.end method
