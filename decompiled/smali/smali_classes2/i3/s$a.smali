.class public interface abstract Li3/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Li3/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li3/s$a$a;

    invoke-direct {v0}, Li3/s$a$a;-><init>()V

    sput-object v0, Li3/s$a;->a:Li3/s$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media3/common/r;)Z
.end method

.method public abstract b(Landroidx/media3/common/r;)I
.end method

.method public abstract c(Landroidx/media3/common/r;)Li3/s;
.end method
