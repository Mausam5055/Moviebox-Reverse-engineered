.class abstract Lab/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lab/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lab/o;

    invoke-direct {v0}, Lab/o;-><init>()V

    sput-object v0, Lab/o$a;->a:Lab/o;

    return-void
.end method
