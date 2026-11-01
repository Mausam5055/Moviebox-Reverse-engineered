.class public final Lcom/google/firebase/sessions/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/sessions/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/f$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/firebase/sessions/f$a;


# instance fields
.field private final a:Lic/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/f;->b:Lcom/google/firebase/sessions/f$a;

    return-void
.end method

.method public constructor <init>(Lic/b;)V
    .locals 1

    const-string v0, "transportFactoryProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/f;->a:Lic/b;

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/sessions/f;Lcom/google/firebase/sessions/u;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/f;->c(Lcom/google/firebase/sessions/u;)[B

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/google/firebase/sessions/u;)[B
    .locals 3

    sget-object v0, Lcom/google/firebase/sessions/v;->a:Lcom/google/firebase/sessions/v;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/v;->c()Lbc/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lbc/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Event Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/u;->b()Lcom/google/firebase/sessions/EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/u;)V
    .locals 5

    const-string v0, "sessionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/sessions/f;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr8/i;

    const-string v1, "json"

    invoke-static {v1}, Lr8/c;->b(Ljava/lang/String;)Lr8/c;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/sessions/e;

    invoke-direct {v2, p0}, Lcom/google/firebase/sessions/e;-><init>(Lcom/google/firebase/sessions/f;)V

    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    const-class v4, Lcom/google/firebase/sessions/u;

    invoke-interface {v0, v3, v4, v1, v2}, Lr8/i;->b(Ljava/lang/String;Ljava/lang/Class;Lr8/c;Lr8/g;)Lr8/h;

    move-result-object v0

    invoke-static {p1}, Lr8/d;->f(Ljava/lang/Object;)Lr8/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lr8/h;->b(Lr8/d;)V

    return-void
.end method
