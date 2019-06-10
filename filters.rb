# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  
  @candidates.select do |candidate| 
    candidate[:github_points] >= 100 && 
    experienced?(candidate) &&
    candidate[:age] >= 18 &&
    (candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")) &&
    candidate[:date_applied] >= 15.days.ago.to_date
  end
end

def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [-candidate[:years_of_experience], [-candidate[:github_points]]]}
end
# More methods will go below
