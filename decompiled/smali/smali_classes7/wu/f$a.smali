.class final Lwu/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Throwable;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu/f$a;->a:Ljava/lang/Throwable;

    iput p2, p0, Lwu/f$a;->b:I

    return-void
.end method
