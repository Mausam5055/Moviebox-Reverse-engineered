.class public final Lnc/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnc/a$a;
    }
.end annotation


# static fields
.field private static final b:Lnc/a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/a$a;

    invoke-direct {v0}, Lnc/a$a;-><init>()V

    invoke-virtual {v0}, Lnc/a$a;->a()Lnc/a;

    move-result-object v0

    sput-object v0, Lnc/a;->b:Lnc/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method public static b()Lnc/a$a;
    .locals 1

    new-instance v0, Lnc/a$a;

    invoke-direct {v0}, Lnc/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1

    iget-object v0, p0, Lnc/a;->a:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object v0
.end method

.method public c()[B
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/messaging/l0;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
