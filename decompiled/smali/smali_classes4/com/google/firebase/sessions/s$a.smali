.class public final Lcom/google/firebase/sessions/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/google/firebase/sessions/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/s$a;

    invoke-direct {v0}, Lcom/google/firebase/sessions/s$a;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/s$a;->a:Lcom/google/firebase/sessions/s$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/sessions/s;
    .locals 2

    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    invoke-static {v0}, Lcom/google/firebase/l;->a(Lcom/google/firebase/c;)Lcom/google/firebase/f;

    move-result-object v0

    const-class v1, Lcom/google/firebase/sessions/s;

    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firebase.app[SessionDatastore::class.java]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firebase/sessions/s;

    return-object v0
.end method
