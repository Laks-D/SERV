#layout.tsx
import type React from "react"
import { AuthLayout } from "@/components/layout/auth-layout"

export default function ProfileLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return <AuthLayout>{children}</AuthLayout>
}

#page.tsx
"use client"

import { useState } from "react"
import Image from "next/image"
import Link from "next/link"
import { Edit, Share2 } from "lucide-react"

import { Button } from "@/components/ui/button"
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"

export default function ProfilePage() {
  const [activeTab, setActiveTab] = useState("overview")
  
  return (
    <div className="space-y-6">
      {/* Profile Header */}
      <div className="relative">
        <div className="h-48 w-full overflow-hidden rounded-lg bg-muted">
          <Image
            src="/placeholder.svg?height=200&width=1200&text=Cover+Photo"
            alt="Cover Photo"
            width={1200}
            height={200}
            className="h-full w-full object-cover"
          />
        </div>
        <div className="absolute -bottom-16 left-4 flex items-end md:left-8">
          <Avatar className="h-32 w-32 border-4 border-background">
            <AvatarImage src="/placeholder.svg?height=128&width=128&text=JD" alt="Jane Doe" />
            <AvatarFallback>JD</AvatarFallback>
          </Avatar>
        </div>
        <div className="absolute right-4 top-4 flex gap-2 md:right-8">
          <Button variant="outline" className="bg-background/80 backdrop-blur-sm">
            <Share2 className="mr-2 h-4 w-4" />
            Share Profile
          </Button>
          <Link href="/settings">
            <Button className="bg-background/80 backdrop-blur-sm">
              <Edit className="mr-2 h-4\
