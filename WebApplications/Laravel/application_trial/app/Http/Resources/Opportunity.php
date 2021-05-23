<?php

namespace App\Http\Resources;

use App\Http\Resources\Lookups\Category;
use App\Http\Resources\Lookups\Country;
use App\Models\Models\OpportunityDetail;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Opportunity extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'category' => $this->category,
            'country' => new Country($this->country),
            'deadline' => $this->deadline->toFormattedDateString(),
            'createdBy' => $this->user,
            'organizer' => $this->organizer,
            'opportunityDetails' => $this->detail,
            'createdAt' => $this->created_at->format("d.m.y H:i"),
            'updatedAt' => $this->created_at->toDateTimeString(),
        ];
    }
}
