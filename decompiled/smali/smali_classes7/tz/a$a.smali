.class Ltz/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ltz/h;

.field b:Z


# direct methods
.method constructor <init>(Ltz/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltz/a$a;->a:Ltz/h;

    iput-boolean p2, p0, Ltz/a$a;->b:Z

    return-void
.end method
