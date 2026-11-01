.class Lcom/google/api/BackendRule$PathTranslation$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/y$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule$PathTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/api/BackendRule$PathTranslation;
    .locals 0

    invoke-static {p1}, Lcom/google/api/BackendRule$PathTranslation;->forNumber(I)Lcom/google/api/BackendRule$PathTranslation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/y$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$PathTranslation$a;->a(I)Lcom/google/api/BackendRule$PathTranslation;

    move-result-object p1

    return-object p1
.end method
