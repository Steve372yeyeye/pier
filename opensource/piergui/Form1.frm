VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "pier GUI"
   ClientHeight    =   4680
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4680
   ScaleWidth      =   4680
   StartUpPosition =   2  '��Ļ����
   Begin VB.Frame Frame2 
      Caption         =   "��������"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      Width           =   4455
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   9
         Text            =   "����������Ҫ���ص�����"
         Top             =   960
         Width           =   3495
      End
      Begin VB.CommandButton Command2 
         Caption         =   "����������"
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1200
         TabIndex        =   8
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label Label3 
         Caption         =   "Pier ֧����������������ʵ�ָ��������֧�֣�����Ҫ�ṩ��Ҫ��װ�����԰���"
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   4215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "���������"
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.CommandButton Command1 
         Caption         =   "��ʼִ�в���"
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   720
         TabIndex        =   6
         Top             =   1560
         Width           =   2895
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   4215
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         Left            =   120
         TabIndex        =   1
         Text            =   "��ѡ�����"
         Top             =   480
         Width           =   4215
      End
      Begin VB.Label Label2 
         Caption         =   "Ҫ�������������"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   840
         Width           =   3975
      End
      Begin VB.Label Label1 
         Caption         =   "��β��� pier?"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2655
      End
   End
   Begin VB.Menu Lang 
      Caption         =   "Language(&L)"
      Visible         =   0   'False
      Begin VB.Menu eng 
         Caption         =   "English"
      End
      Begin VB.Menu cn 
         Caption         =   "��������"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cn_Click()
Label1.Caption = "��β��� pier?"
Label2.Caption = "Ҫ�������������"
Command1.Caption = "��ʼִ�в���"
Combo1.Text = "��ѡ�����"
Shell "cmd.exe /c echo .\language\zh-CN> " + App.Path + "\language.ini", vbHide
MsgBox "pier �Լ� pier GUI �Ѿ���������Ϊ�������ġ�", 64, "���Ա䶯"
End Sub

Private Sub Command1_Click()
Shell "cmd.exe /c " + App.Path + "\pier.bat " + Combo1.Text + " " + Text1.Text, vbNormalFocus
End Sub

Private Sub Command2_Click()
Shell "cmd.exe /c " + App.Path + "\pier.bat --setlang install " + Text2.Text, vbNormalFocus
End Sub

Private Sub eng_Click()
Label1.Caption = "How to operate pier?"
Label2.Caption = "Package to operate:"
Command1.Caption = "start the action"
Combo1.Text = "Please select an action"
Shell "cmd.exe /c echo .\language\en-US> " + App.Path + "\language.ini", vbHide
MsgBox "pier and pier GUI have changed language to English.", 64, "language change"
End Sub

Private Sub Form_Load()
Combo1.AddItem "install"
Combo1.AddItem "remove"
End Sub

Private Sub Text2_Click()
If Text2.Text = "����������Ҫ���ص�����" Then
    Text2.Text = ""
End If
End Sub
