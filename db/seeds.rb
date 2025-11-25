
# Clear existing data
ContactSubmission.destroy_all

# More comprehensive sample data
submissions_data = [
  {
    name: "Sarah Johnson",
    email: "sarah.j@example.com",
    message: "Hi there! I came across your portfolio and I'm impressed with your work. I have a project that I think would be a great fit. Could we schedule a call to discuss the details? The project involves building a responsive e-commerce site for my boutique. Looking forward to hearing from you!",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Michael Chen",
    email: "michael.chen@techco.com",
    message: "Hello! I'm the CTO at TechCo and we're looking for a reliable web development partner. Your work on the InnovationLabs project caught our attention. We have several ongoing projects that could use your expertise. Are you available for a discovery call next week?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Emma Rodriguez",
    email: "emma.rodriguez@designstudio.com",
    message: "Greetings! I represent PixelPerfect Design Studio and we're looking for development partners. Your technical skills combined with our design expertise could create amazing results for clients. Would you be interested in exploring a partnership?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "James Wilson",
    email: "james.wilson@consultingfirm.com",
    message: "URGENT: Our corporate website is experiencing critical issues after the latest update. Pages are loading slowly and the contact forms have stopped working. Our team is losing potential clients. Please contact me immediately for emergency support!",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Lisa Thompson",
    email: "lisa.thompson@creativeagency.com",
    message: "Hi! I'm starting a new creative agency and need a stunning website that reflects our brand. I love the modern, clean designs in your portfolio. Could you share your pricing structure for similar projects and typical timelines?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "David Kim",
    email: "david.kim@startup.io",
    message: "Hello! We're a fast-growing startup in the fintech space and need to rebuild our web platform. Your experience with real-time applications is exactly what we need. Do you have capacity for a 3-month engagement starting next month?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Maria Garcia",
    email: "maria.garcia@corporation.com",
    message: "Dear Team, I'm the Digital Marketing Manager at GlobalCorp. We're planning a complete website redesign and are looking for qualified agencies. Your portfolio shows great attention to detail. Could you send me your agency capabilities deck?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Robert Brown",
    email: "robert.brown@enterprise.com",
    message: "Good day! I need to integrate our enterprise website with Salesforce, Marketo, and our internal CRM systems. The current implementation has performance issues. Do you have experience with complex system integrations?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Jennifer Lee",
    email: "jennifer.lee@digitalstudio.com",
    message: "Hi there! Just wanted to say I absolutely love the work you did on the EcoFashion website. The animations are smooth and the user experience is fantastic. Do you offer training for in-house teams?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Christopher Davis",
    email: "chris.davis@innovationlabs.com",
    message: "Hello! I'm writing from Innovation Labs. We're hosting a web development conference next month and would love to have you as a speaker. Your work with progressive web apps would be a great topic. Are you interested?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Amanda Martinez",
    email: "amanda.martinez@webstudio.com",
    message: "Hi! I have an existing WordPress site that needs major performance optimization. Current load times are over 8 seconds on mobile. Do you offer website audit and optimization services? If so, what's your process?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Daniel Taylor",
    email: "daniel.taylor@techsolutions.com",
    message: "Greetings! We're developing a new SaaS product and need a comprehensive documentation site. Your technical writing samples look excellent. Do you handle both the development and content creation?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Jessica White",
    email: "jessica.white@creativehub.com",
    message: "Hello! My current e-commerce site built on Shopify needs custom functionality that's beyond what standard plugins can offer. Specifically, I need custom product configurators and advanced inventory management. Can you help?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Kevin Anderson",
    email: "kevin.anderson@businessgroup.com",
    message: "Good morning! I represent a business consortium looking to develop a member portal with secure document sharing, event registration, and payment processing. The project is quite large - do you work with teams on enterprise-level projects?",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  },
  {
    name: "Nicole Clark",
    email: "nicole.clark@designlab.com",
    message: "Hi! I'm a freelance designer looking for a reliable development partner to refer clients to. Your portfolio shows great versatility across different industries. Would you be open to discussing a referral partnership? I typically get 2-3 web development projects per month.",
    site_url: "http://localhost:4200",
    site_owner_email: "localhost.owner@email.com"
  }
]

puts "Creating #{submissions_data.size} few contact submissions seed"

submissions_data.each_with_index do |data, index|
  ContactSubmission.create!(data)
  puts "Created submission #{index + 1}/#{submissions_data.size}: #{data[:name]}"
end
