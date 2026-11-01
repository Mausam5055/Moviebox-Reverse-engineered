.class La5/g0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:La5/z0;

.field final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(La5/z0;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/g0$a;->a:La5/z0;

    iput-object p2, p0, La5/g0$a;->b:Ljava/lang/Class;

    return-void
.end method
