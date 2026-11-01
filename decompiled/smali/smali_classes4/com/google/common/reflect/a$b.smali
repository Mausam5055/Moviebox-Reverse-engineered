.class abstract Lcom/google/common/reflect/a$b;
.super Lcom/google/common/reflect/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/reflect/a;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    iput-object p1, p0, Lcom/google/common/reflect/a$b;->d:Ljava/lang/reflect/Method;

    return-void
.end method
